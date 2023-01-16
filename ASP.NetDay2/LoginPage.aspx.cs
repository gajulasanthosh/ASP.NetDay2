using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ASP.NetDay2
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(TxtEmailId.Text, TxtPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TxtEmailId.Text, true);
            }
            else
            {
                Response.Write("Invalid UserId or Password");
            }
        }
    }
}