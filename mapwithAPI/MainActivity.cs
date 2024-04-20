using System;
using System.Net.Http;
using System.Threading.Tasks;
using Android.App;
using Android.Gms.Maps;
using Android.Gms.Maps.Model;
using Android.OS;
using Android.Widget;
using Newtonsoft.Json.Linq;
using SQLite;
using System.IO;
using Android.Util;
using System.Linq;
using Android.Locations;
using System.Threading;
using Android.Runtime;
using Android.Content;
using Com.Google.Maps.Android;





namespace mapwithAPI
{
    [Activity(Label = "MainActivity")]
    public class MainActivity : Activity, IOnMapReadyCallback, Android.Locations.ILocationListener

    {

        // define buttons as global
        private GoogleMap mMap; //global variable
        private Button btnNormal;
        private Button btnHybrid;
        private Button btnSatellite;
        private Button btnTerrain;


        // for GPS location functionality
        private SQLiteConnection dbConn;
        private Button btnPlotGpsLocation;
        private Button btnStartGps;

        private LocationManager locationManager;
        private Android.Gms.Location.LocationRequest locationRequest;
        private Timer locationTimer;


        const int RequestLocationId = 0;


        //protected override void AttachBaseContext(Context @base)
        //{
        //    base.AttachBaseContext(@base);
        //}


        protected override void OnCreate(Bundle savedInstanceState)
        {

            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_main);


            // Initialize SQLite database
            string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "locations.db3");
            dbConn = new SQLiteConnection(dbPath);

     
            // Create table
            dbConn.CreateTable<Location>();


            if (!dbConn.TableMappings.Any(m => m.MappedType.Name == typeof(Location).Name))
            {
                dbConn.CreateTable<Location>();
                Log.Debug("DB_INIT", "Location table created");
            }


            // get a reference of buttons - wire UI to back code
            btnNormal = FindViewById<Button>(Resource.Id.btnNormal);
            btnHybrid = FindViewById<Button>(Resource.Id.btnHybrid);
            btnSatellite = FindViewById<Button>(Resource.Id.btnSatellite);
            btnTerrain = FindViewById<Button>(Resource.Id.btnTerrain);
            

            // setup events handlers
            btnNormal.Click += BtnNormal_Click;
            btnHybrid.Click += BtnHybrid_Click;
            btnSatellite.Click += BtnSatellite_Click;
            btnTerrain.Click += BtnTerrain_Click;


            // plot GPS history data
            btnPlotGpsLocation = FindViewById<Button>(Resource.Id.btnPlotGpsHistory);
            btnPlotGpsLocation.Click += BtnPlotGpsLocation_Click; // event handler for GPS location 

            // start GPS button
            btnStartGps = FindViewById<Button>(Resource.Id.btnStartGps);
            btnStartGps.Click += BtnStartGps_Click; // start from here


            SetUpMap();
        }

        //********************** permission ************************
        private void BtnStartGps_Click(object sender, EventArgs e)
        {
            // Check if the permission is granted
            if (CheckSelfPermission(Android.Manifest.Permission.AccessFineLocation) != Android.Content.PM.Permission.Granted)
            {
                // Permission is not granted, request it
                RequestPermissions(new string[] { Android.Manifest.Permission.AccessFineLocation }, RequestLocationId);
            }
            else
            {
                // Permission is already granted, initialize location services
                InitializeLocationManager();
            }
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            switch (requestCode)
            {
                case RequestLocationId:
                    {
                        if (grantResults[0] == Android.Content.PM.Permission.Granted)
                        {
                            // Permission granted
                            InitializeLocationManager();
                        }
                        else
                        {
                            // Permission denied
                            // Handle permission denied case
                        }
                        return;
                    }
            }
        }

        private void InitializeLocationManager()
        {
            locationManager = (LocationManager)GetSystemService(Context.LocationService);
            locationManager.RequestLocationUpdates(LocationManager.GpsProvider, 5000, 1, this);
        }


        //********************** permission ************************


        public void OnLocationChanged(Android.Locations.Location location)
        {
            // Create a new Location object with latitude, longitude, and timestamp
            var newLocation = new Location
            {
                Latitude = location.Latitude,
                Longitude = location.Longitude,
                Timestamp = DateTime.Now
            };

            // Insert the Location into the database
            dbConn.Insert(newLocation);
        }


        public void OnProviderDisabled(string provider)
        {
            throw new NotImplementedException();
        }

        public void OnProviderEnabled(string provider)
        {
            throw new NotImplementedException();
        }

        public void OnStatusChanged(string provider, [GeneratedEnum] Availability status, Bundle extras)
        {
            throw new NotImplementedException();
        }


        //********************************

        private void BtnPlotGpsLocation_Click(object sender, EventArgs e)
        {
            // tunr off the gps/previous function


            // Refresh map
            RefreshMap();
        }

        private void RefreshMap()
        {
            // Clear existing markers
            mMap.Clear();

            // Move camera to show both markers
            LatLngBounds.Builder builder = new LatLngBounds.Builder();

            // Fetch and draw saved locations
            var locations = dbConn.Table<Location>().ToList();
            foreach (var loc in locations)
            {
                var latLng = new LatLng(loc.Latitude, loc.Longitude);
                // build camera for all points
                builder.Include(latLng);
                mMap.AddMarker(new MarkerOptions().SetPosition(latLng).SetTitle(loc.Timestamp.ToString("HH:mm:ss")));
            }

            LatLngBounds bounds = builder.Build();
            // update camera view and move camera to the scence
            CameraUpdate cameraUpdate = CameraUpdateFactory.NewLatLngBounds(bounds, 500);
            mMap.AnimateCamera(cameraUpdate);

        }



        // old code for 2 locations in Reno

        private void BtnTerrain_Click(object sender, EventArgs e)
        {
            mMap.MapType = GoogleMap.MapTypeTerrain;
        }

        private void BtnSatellite_Click(object sender, EventArgs e)
        {
            mMap.MapType = GoogleMap.MapTypeSatellite;
        }

        private void BtnHybrid_Click(object sender, EventArgs e)
        {
            mMap.MapType = GoogleMap.MapTypeHybrid;
        }

        private void BtnNormal_Click(object sender, EventArgs e)
        {
            mMap.MapType = GoogleMap.MapTypeNormal;
        }


        private void SetUpMap()
        {
            var mapFragment = FragmentManager.FindFragmentById<MapFragment>(Resource.Id.map_ehsan);
            mapFragment.GetMapAsync(this);
        }


        public void OnMapReady(GoogleMap googleMap)
        {
            mMap = googleMap;

            // Set map type to Terrain
            mMap.MapType = GoogleMap.MapTypeTerrain;


            LatLng sourceLatLng = new LatLng(39.53859, -119.81332); // mining
            LatLng destinationLatLng = new LatLng(39.52880, -119.80850); // Reno Stadium - downtown

            // Draw markers
            mMap.AddMarker(new MarkerOptions().SetPosition(sourceLatLng).SetTitle("Source"));
            mMap.AddMarker(new MarkerOptions().SetPosition(destinationLatLng).SetTitle("Destination"));


            // Move camera to show both markers
            LatLngBounds.Builder builder = new LatLngBounds.Builder();
            builder.Include(sourceLatLng);
            builder.Include(destinationLatLng);
            LatLngBounds bounds = builder.Build();

            // update camera view and move camera to the scence
            CameraUpdate cameraUpdate = CameraUpdateFactory.NewLatLngBounds(bounds, 500);
            mMap.AnimateCamera(cameraUpdate);


            // Fetch and draw route
            Task.Run(async () => await DrawRouteAsync(sourceLatLng, destinationLatLng));
        }


        //string apiKey = "AIzaSyCzUeZ93ed3jmej-z2lyVNoe-p1dRxNt9I";


        private async Task DrawRouteAsync(LatLng sourceLatLng, LatLng destinationLatLng)
        {
            // Display a route using Directions API
            HttpClient client = new HttpClient();

            string apiKey = "AIzaSyCzUeZ93ed3jmej-z2lyVNoe-p1dRxNt9I";

            // The bellow example requests JSON output.
            string url = $"https://maps.googleapis.com/maps/api/directions/json?origin={sourceLatLng.Latitude},{sourceLatLng.Longitude}&destination={destinationLatLng.Latitude},{destinationLatLng.Longitude}&key={apiKey}";
            

            var response = await client.GetAsync(url);
            if (response.IsSuccessStatusCode)
            {
                string json = await response.Content.ReadAsStringAsync();
                Console.WriteLine(json); // Log the JSON response for debugging purposes

                var routeJson = JObject.Parse(json);
                Console.WriteLine(routeJson); // Log the parsed JSON for debugging purposes

                var route = routeJson["routes"][0]["overview_polyline"]["points"].ToString();
                Console.WriteLine(route); // Log the overview polyline for debugging purposes

                var polylineOptions = new PolylineOptions();
                var points = PolyUtil.Decode(route);
                Console.WriteLine($"Number of points: {points.Count}"); // Log the number of points decoded for debugging purposes

                foreach (var point in points)
                {
                    polylineOptions.Add(new LatLng(point.Latitude, point.Longitude));
                }

                RunOnUiThread(() =>
                {
                    mMap.AddPolyline(polylineOptions);
                });
            }
            else
            {
                Console.WriteLine($"ERROR: Failed to fetch route: {response.StatusCode} - {response.ReasonPhrase}"); // Log if fetching route failed
            }
        }

    }



    // Define Location class for SQLite table
    public class Location
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }  // Integer primary key with auto-increment

        public double Latitude { get; set; }
        public double Longitude { get; set; }
        public DateTime Timestamp { get; set; }
    }
}

