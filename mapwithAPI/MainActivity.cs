using System;
using System.Threading.Tasks;
using Android.App;
using Android.OS;
using Android.Widget;
using System.IO;
using Android.Util;
using System.Linq;
using Android.Locations;
using Android.Gms.Maps;
//using System.Threading;
using SQLite;
using Android.Runtime;
using Android.Content;
using Com.Google.Maps.Android;
using Android.Gms.Maps.Model;
using System.Net.Http;
using Newtonsoft.Json.Linq;
using Android.Media;
using System.Threading;
using System.Collections.Generic;
using Android.Graphics;
//using Android.Support.Multidex;
//using Android.Support.V7.App;
//using AndroidX.AppCompat.App;




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
        //private Timer locationTimer;
        const int RequestLocationId = 0;




        protected override void OnCreate(Bundle savedInstanceState)
        {

            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_main);


            // Initialize SQLite database
            string dbPath = System.IO.Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "locations.db3");
            dbConn = new SQLiteConnection(dbPath); // connection stablished here


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
            btnStartGps.Click += BtnStartGps_Click; // start button


            SetUpMap();
        }


        //********************** plot route on Google Map ************************

        private async Task DrawRouteFromDatabaseAsync()
        {
            // Fetch saved locations from SQLite database
            var locations = dbConn.Table<Location>().ToList();

            int numLocations = locations.Count;

            if (locations.Count < 2)
            {
                // You need at least 2 points to draw a route
                // Show a Toast/notification on screen
                Toast.MakeText(this, "You need at least 2 points to draw a route", ToastLength.Short).Show();
                return;
            }


            // Create polyline options
            var polylineOptions = new PolylineOptions();

            for (int i = 0; i < numLocations; i++)
            {
                var loc = locations[i];

            //    foreach (var loc in locations)
            //{

                var latLng = new LatLng(loc.Latitude, loc.Longitude);

                // build camera and Move camera to show both markers
                LatLngBounds.Builder builder = new LatLngBounds.Builder();

                builder.Include(latLng);


                // Add marker as blue dot
                MarkerOptions markerOptions = new MarkerOptions()
                    .SetPosition(latLng)
                    .SetTitle(loc.Timestamp.ToString("HH:mm:ss"));
                    //.SetIcon(BitmapDescriptorFactory.DefaultMarker(BitmapDescriptorFactory.HueYellow));


                // Check if it's the first location
                if (i == 0)
                {
                    // First location, set marker as red dot
                    markerOptions.SetIcon(BitmapDescriptorFactory.DefaultMarker(BitmapDescriptorFactory.HueRed))
                                 .SetSnippet("Start Point");
                }

                // Check if it's the last location
                else if (i == numLocations - 1)
                {
                    // Last location, set marker as green rectangle
                    markerOptions.SetIcon(BitmapDescriptorFactory.DefaultMarker(BitmapDescriptorFactory.HueGreen))
                                 .SetSnippet("End Point");
                }
                else
                {
                    // Any other location, set marker as yellow dot
                    markerOptions.SetIcon(BitmapDescriptorFactory.DefaultMarker(BitmapDescriptorFactory.HueYellow));
                }


                // Add marker to the map
                mMap.AddMarker(markerOptions);


                LatLngBounds bounds = builder.Build();

                // Padding for the bounds
                int padding = 100; // Padding in pixels

                // update camera view and move camera to the scence
                CameraUpdate cameraUpdate = CameraUpdateFactory.NewLatLngBounds(bounds, padding);
                mMap.AnimateCamera(cameraUpdate);

                // build polyline
                polylineOptions.Add(latLng);
            }



            // Set polyline properties - Customizing polyline
            polylineOptions.InvokeColor(Android.Graphics.Color.Blue.ToArgb()); // Set color to red
            polylineOptions.InvokeWidth(12); // Set width

            // Set custom dotted pattern
            polylineOptions.InvokePattern(new List<PatternItem>
            {
                new Dot(),
                new Gap(20) // 20 is the gap between dots in pixels
            });



            // Add polyline to the map
            RunOnUiThread(() =>
            {
                mMap.AddPolyline(polylineOptions);
            });
        }


        //******************* button: Start GPS *****************

        private void BtnStartGps_Click(object sender, EventArgs e)
        {

            // flush SQL table before starting GPS
            Flushsql();

            // camera to current location()????? refresh map
            ClearGoogleMap();


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

        //********************** ??? ************************

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            switch (requestCode)
            {
                case RequestLocationId:
                    {
                        if (grantResults[0] == Android.Content.PM.Permission.Granted)
                        {

                            // Permission granted, therefore start collecting GPS locations
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
            locationManager.RequestLocationUpdates(LocationManager.GpsProvider, 5000, 1, this); // gps provider?
        }


        //********************** permission ************************


        public void OnLocationChanged(Android.Locations.Location location) // this function is called whenever there's a change in the device's location. This change is usually due to the GPS sensor detecting a new location.
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


            //********* show new location on map every moment

            //// Update the map camera to the current location
            //LatLng latLng = new LatLng(location.Latitude, location.Longitude);
            //mMap.MoveCamera(CameraUpdateFactory.NewLatLngZoom(latLng, 50));

            // Add a marker at the current location
            //mMap.AddMarker(new MarkerOptions().SetPosition(latLng).SetTitle("Current Location"));

            //// Enable My Location layer and move the blue dot to the current location
            //mMap.MyLocationEnabled = true;
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
            //// Stop receiving location updates
            //locationManager.RemoveUpdates(this);


            // Execute the DrawRouteFromDatabaseAsync method
            DrawRouteFromDatabaseAsync();
        }



        private void Flushsql()
        {
            // delete table here

            // Initialize SQLite database
            //string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "locations.db3");
            //dbConn = new SQLiteConnection(dbPath);


            // delete table???
            dbConn.DeleteAll<Location>();
        }




        private void ClearGoogleMap()
        {
            // Clear existing markers
            mMap.Clear();
        }




        private void RefreshMap()
        {
            // Clear existing markers
            ClearGoogleMap();

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


            // Padding for the bounds
            int padding = 100; // Padding in pixels

            // update camera view and move camera to the scence
            CameraUpdate cameraUpdate = CameraUpdateFactory.NewLatLngBounds(bounds, padding);
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

        //****************************************

        private void SetUpMap()
        {

            var mapFragment = FragmentManager.FindFragmentById<MapFragment>(Resource.Id.map_ehsan);
            mapFragment.GetMapAsync(this);

        }


        //****************************************

        public void OnMapReady(GoogleMap googleMap) // This method is automatically called by the Android system when the map is ready to be used from SetUpMat()
        {
            mMap = googleMap;

            // Set map type
            mMap.MapType = GoogleMap.MapTypeHybrid;


            // zoom to current location???
            // Enable My Location layer and move the blue dot to the current location
            mMap.MyLocationEnabled = true;


            // Define a LatLng object with the desired location (replace with your neighborhood's latitude and longitude)
            LatLng desiredLocation = new LatLng(39.543188330693006, -119.81502218944539); // UNR as an example

            // Create a camera update object to move the camera to the desired location and zoom in
            CameraUpdate cameraUpdate = CameraUpdateFactory.NewLatLngZoom(desiredLocation, 10);

            // Move the camera to the desired location
            mMap.MoveCamera(cameraUpdate);


            // Fetch and draw route from database
            //Task.Run(async () => await DrawRouteFromDatabaseAsync()); // maybe then wait for click?
        }


        //******************* old- start and stop *********************


        //public void OnMapReady(GoogleMap googleMap)
        //{
        //    mMap = googleMap;

        //    // Set map type
        //    mMap.MapType = GoogleMap.MapTypeTerrain;


        //    LatLng sourceLatLng = new LatLng(39.53859, -119.81332); // mining
        //    LatLng destinationLatLng = new LatLng(39.52880, -119.80850); // Reno Stadium - downtown

        //    // Draw markers
        //    mMap.AddMarker(new MarkerOptions().SetPosition(sourceLatLng).SetTitle("Source"));
        //    mMap.AddMarker(new MarkerOptions().SetPosition(destinationLatLng).SetTitle("Destination"));


        //    // Move camera to show both markers
        //    LatLngBounds.Builder builder = new LatLngBounds.Builder();
        //    builder.Include(sourceLatLng);
        //    builder.Include(destinationLatLng);
        //    LatLngBounds bounds = builder.Build();


        //    // Padding for the bounds
        //    int padding = 100; // Padding in pixels

        //    // update camera view and move camera to the scence
        //    CameraUpdate cameraUpdate = CameraUpdateFactory.NewLatLngBounds(bounds, padding);
        //    mMap.AnimateCamera(cameraUpdate);


        //    // Fetch and draw route
        //    Task.Run(async () => await DrawRouteAsync(sourceLatLng, destinationLatLng));
        //}




        //private async Task DrawRouteAsync(LatLng sourceLatLng, LatLng destinationLatLng)
        //{
        //    // Display a route using Directions API
        //    HttpClient client = new HttpClient();

        //    string apiKey = "AIzaSyCzUeZ93ed3jmej-z2lyVNoe-p1dRxNt9I";

        //    // The bellow example requests JSON output.
        //    string url = $"https://maps.googleapis.com/maps/api/directions/json?origin={sourceLatLng.Latitude},{sourceLatLng.Longitude}&destination={destinationLatLng.Latitude},{destinationLatLng.Longitude}&key={apiKey}";


        //    var response = await client.GetAsync(url);
        //    if (response.IsSuccessStatusCode)
        //    {
        //        string json = await response.Content.ReadAsStringAsync();
        //        Console.WriteLine(json); // Log the JSON response for debugging purposes

        //        var routeJson = JObject.Parse(json);
        //        Console.WriteLine(routeJson); // Log the parsed JSON for debugging purposes

        //        var route = routeJson["routes"][0]["overview_polyline"]["points"].ToString();
        //        Console.WriteLine(route); // Log the overview polyline for debugging purposes

        //        var polylineOptions = new PolylineOptions();
        //        var points = PolyUtil.Decode(route);
        //        Console.WriteLine($"Number of points: {points.Count}"); // Log the number of points decoded for debugging purposes

        //        foreach (var point in points)
        //        {
        //            polylineOptions.Add(new LatLng(point.Latitude, point.Longitude));
        //        }

        //        RunOnUiThread(() =>
        //        {
        //            mMap.AddPolyline(polylineOptions);
        //            });
        //        }
        //        else
        //        {
        //            Console.WriteLine($"ERROR: Failed to fetch route: {response.StatusCode} - {response.ReasonPhrase}"); // Log if fetching route failed
        //        }
        //    }

        //}



        // reftful API method accepts parameters - server side

        // Define Location class for SQLite table
        public class Location
        {
            [PrimaryKey, AutoIncrement] // unique ID for db
            public int Id { get; set; }  // Integer primary key with auto-increment

            public double Latitude { get; set; }
            public double Longitude { get; set; }
            public DateTime Timestamp { get; set; }
        }
    }
}

