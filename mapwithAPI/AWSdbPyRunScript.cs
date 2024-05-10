using Android.Widget;
using Python.Runtime;
using Android.App;
using Android.Content;



namespace mapwithAPI
{
    public class AWSdbPyRunScript
    {
        public void ExecutePyScript(string scriptName)
        {
            // Initialize Python engine
            PythonEngine.Initialize();

            // Execute Python script
            using (Py.GIL())
            {
                dynamic script = Py.Import(scriptName); // Load the Python script by name
                dynamic location_data = script.conn2aws();
                string toastText = location_data.ToString(); // Assuming location_data is a string

                // Display location data using Xamarin Android's toast mechanism
                Context context = Application.Context;
                Toast.MakeText(context, toastText, ToastLength.Short).Show();
            }

            // Shutdown Python engine when finished
            PythonEngine.Shutdown();
        }
    }
}
