using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NetDay2
{
    public partial class DemoDataCache : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["Name"] != null)
            {
                LblName.Text = Cache["Name"].ToString();
            }
            else
            {
                LblName.Text = "Guest";
            }

            DataTable dt = Cache["Customers"] as DataTable;
            GridCustomers.DataSource = dt;
            GridCustomers.DataBind();
               
        }
    }
}