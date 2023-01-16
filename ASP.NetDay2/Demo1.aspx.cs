using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NetDay2
{
    public partial class Demo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void date_Click(object sender, EventArgs e)
        {
            //LblDate.Text = DateTime.Now.ToString();
        }

        protected void BtnGetData_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Server =ICS-LAP-2908\\SQLEXPRESS; Database=Northwind; Integrated Security=true;"))
            {
                using(SqlDataAdapter adapter= new SqlDataAdapter("Select * from customers where Country = @Country", con))
                {
                    adapter.SelectCommand.Parameters.AddWithValue("@Country", DdlCountries.SelectedValue);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    GridCustomers.DataSource = dt;
                    GridCustomers.DataBind();
                }
            }
        }
    }
}