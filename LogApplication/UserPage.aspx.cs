using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogApplication
{
    public partial class UserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var login = Request.Cookies["login"];
            var sign = Request.Cookies["sign"];
            if (login != null && sign != null)
            {
                if (sign.Value != SignGenerator.GetSign(login.Value + "byteapp"))
                {
                    Response.Redirect("Logout.aspx");
                }

                Label1.Text = login.Value;
                return;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }
    }
}