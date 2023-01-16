using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;
using System.Data;
using System.Data.SqlClient;

namespace ASP.NetDay2
{
    public partial class DataCahceExam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            //Cache["Name"] = TxtName.Text;
            //Cache.Insert("Name", TxtName.Text, null, DateTime.Now.AddSeconds(20), Cache.NoSlidingExpiration);
            Cache.Insert("Name", TxtName.Text, null, Cache.NoAbsoluteExpiration,TimeSpan.FromSeconds(30));

            //Storing Data tAble in Cache
            using (SqlConnection con = new SqlConnection("Server =ICS-LAP-2908\\SQLEXPRESS; Database=Northwind; Integrated Security=true;"))
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("Select * from customers", con))
                {
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    Cache.Insert("Customers", dt, null, Cache.NoAbsoluteExpiration, TimeSpan.FromSeconds(30));
                }
            }

            Response.Redirect("DemoDataCache.aspx");
        }
    }
}