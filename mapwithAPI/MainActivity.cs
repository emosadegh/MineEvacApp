using System;
using System.Net.Http;
using System.Threading.Tasks;
using Android.App;
using Android.Gms.Maps;
using Android.Gms.Maps.Model;
using Android.OS;
using Android.Widget;
using Newtonsoft.Json.Linq;
using Com.Google.Maps.Android;



namespace mapwithAPI
{
    [Activity(Label = "MainActivity", MainLauncher = true, Theme = "@style/AppTheme")]
    public class MainActivity : Activity, IOnMapReadyCallback
    {

        // define buttons as global
        private GoogleMap mMap; //global variable
        private Button btnNormal;
        private Button btnHybrid;
        private Button btnSatellite;
        private Button btnTerrain;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

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

            SetUpMap();
        }


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


        //public void OnMapReady(GoogleMap googleMap)
        //{
        //    //mMap = googleMap;

        //    //// Marker for source point
        //    //// get latlon to use in the scope of camera
        //    //LatLng sourcelatLng = new LatLng(39.53859687074018, -119.81332986713245); // mining

        //    ////// move the camera to latlon
        //    ////CameraUpdate cameraUpdate = CameraUpdateFactory.NewLatLngZoom(latLng, 15);
        //    ////mMap.MoveCamera(cameraUpdate);

        //    //MarkerOptions markerOptions = new MarkerOptions()
        //    //    .SetPosition(sourcelatLng)
        //    //    .SetTitle("UNR")
        //    //    .SetSnippet("My Location");

        //    //mMap.AddMarker(markerOptions);


        //    //****************** v2
        //    mMap = googleMap;

        //    // Marker for source point
        //    // get latlon to use in the scope of camera
        //    LatLng sourceLatLng = new LatLng(39.53859687074018, -119.81332986713245); // mining

        //    MarkerOptions sourceMarkerOptions = new MarkerOptions()
        //     .SetPosition(sourceLatLng)
        //     .SetTitle("UNR")
        //     .SetSnippet("My Location");

        //    mMap.AddMarker(sourceMarkerOptions);


        //    // Marker for destination point
        //    LatLng destinationLatLng = new LatLng(39.543614480452504, -119.81539113575538);

        //        MarkerOptions destinationMarkerOptions = new MarkerOptions()
        //        .SetPosition(destinationLatLng)
        //        .SetTitle("Destination")
        //        .SetSnippet("UNR library");

        //    mMap.AddMarker(destinationMarkerOptions);


        //    // Move camera to show both markers
        //    LatLngBounds.Builder builder = new LatLngBounds.Builder();
        //    builder.Include(sourceLatLng);
        //    builder.Include(destinationLatLng);
        //    LatLngBounds bounds = builder.Build();

        //    // update camera view and move camera to the scence
        //    CameraUpdate cameraUpdate = CameraUpdateFactory.NewLatLngBounds(bounds, 500);
        //    mMap.AnimateCamera(cameraUpdate);


        //    // Draw polyline between source and destination
        //    PolylineOptions polylineOptions = new PolylineOptions()
        //        .Add(sourceLatLng)
        //        .Add(destinationLatLng)
        //        .InvokeColor(Android.Graphics.Color.Red)
        //        .InvokeWidth(5);
        //    mMap.AddPolyline(polylineOptions);
        //}

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
}


