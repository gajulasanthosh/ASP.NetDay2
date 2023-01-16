using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP.NetDay2.ServiceReference1;

namespace ASP.NetDay2
{
    public partial class CustomerData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGetData_Click(object sender, EventArgs e)
        {
            MyWebServiceSoapClient service = new MyWebServiceSoapClient();
            DataSet ds = service.GetCustomers(TxtCountry.Text);
            GridCustomers.DataSource = ds.Tables[0];
            GridCustomers.DataBind();
        }
    }
}