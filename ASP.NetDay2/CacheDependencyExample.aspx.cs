using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;

namespace ASP.NetDay2
{
    public partial class CacheDependencyExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Is user Authenticated :" + User.Identity.IsAuthenticated + "<br/>");
            Response.Write($"User Name :{User.Identity.Name}");
            if (Cache["Data"] != null)
            {
                LblText.Text = Cache["Data"].ToString();
            }
            else
            {
                LblText.Text = "Cache Expired";
            }
        }

        protected void BtnGet_Click(object sender, EventArgs e)
        {
            if(Cache["Data"] == null)
            {
                var text = File.ReadAllText(Server.MapPath("TextFile1.txt"));
                //Cache.Insert("Data", text, new CacheDependency(Server.MapPath("TextFile1.txt")), DateTime.Now.AddSeconds(300), Cache.NoSlidingExpiration);
                //Cache.Insert("Data", text, null, DateTime.Now.AddSeconds(60), Cache.NoSlidingExpiration);
                Cache.Insert("Data", text, null, DateTime.Now.AddSeconds(60), Cache.NoSlidingExpiration,CacheItemPriority.Default,onRemoveCallback);
            }
        }

        private void onRemoveCallback(string key, object value, CacheItemRemovedReason reason)
        {
            if (Cache[key] == null)
            {
                Cache.Remove(key);
            }
        }
    }
}