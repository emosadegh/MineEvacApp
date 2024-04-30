using Android.App;
using Android.OS;
using Android.Widget;

namespace mapwithAPI
{
    [Activity(Label = "MineEvac", MainLauncher = true, Theme = "@style/AppTheme")]
    public class LoginActivity : Activity
    {
        private EditText logInEmail;
        private EditText logInPassword;
        private Button btnLogin;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_login);

            // Initialize UI elements
            logInEmail = FindViewById<EditText>(Resource.Id.loginEmail);
            logInPassword = FindViewById<EditText>(Resource.Id.loginPassword);
            btnLogin = FindViewById<Button>(Resource.Id.btnLogin);

            // Setup click event for login button
            btnLogin.Click += BtnLogin_Click;
        }

        private void BtnLogin_Click(object sender, System.EventArgs e)
        {
            // TO-DO: Implement your login logic here
            string inemail = logInEmail.Text;
            string inpassword = logInPassword.Text;

            // Validate email and password - check if the pass the validation criteria
            if (IsValidEmail(inemail) && IsValidPassword(inpassword))
            {
                // Navigate to MainActivity or perform login action
                StartActivity(typeof(MainActivity));
                Finish(); // ???
            }
            else
            {
                // Display error message for invalid credentials
                Toast.MakeText(this, "Invalid email or password", ToastLength.Short).Show();
            }
        }

        // Example methods for email and password validation
        private bool IsValidEmail(string email)
        {
            // Implement email validation logic
            return !string.IsNullOrEmpty(email);// && Android.Util.Patterns.EmailAddress.Matcher(email).Matches();
        }

        private bool IsValidPassword(string password)
        {
            // Implement password validation logic
            return !string.IsNullOrEmpty(password) && password.Length >= 6;
        }
    }
}
