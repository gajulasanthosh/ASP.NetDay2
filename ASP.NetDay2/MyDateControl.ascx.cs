﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NetDay2
{
    public partial class MyDateControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnChange_Click(object sender, EventArgs e)
        {
            LblDateTime.Text = DateTime.Now.ToString();
        }
    }
}