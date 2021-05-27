using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace LogApplication
{
    
    public partial class Login : System.Web.UI.Page
    {
        private SqlConnection con;
        private Button but;
        protected async void Page_Load(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            con = new SqlConnection(connectionString);
            await con.OpenAsync();
        }

        protected async void Button1_Click(object sender, EventArgs e)
        {
            var userData = new Dictionary<string, string>();
            var getUsersCredits = new SqlCommand("SELECT [Login], [Password] FROM [Table] WHERE Login=@Login AND Password=@Password", con);

            var (userLogin, password) = (Request.Form["UserLogin"], Request.Form["UserPassword"]);
            getUsersCredits.Parameters.AddWithValue("Login", userLogin);
            getUsersCredits.Parameters.AddWithValue("Password", password);
            SqlDataReader dataReader = null;
            try
            {
                dataReader = await getUsersCredits.ExecuteReaderAsync();
                while (await dataReader.ReadAsync())
                {
                    userData.Add(Convert.ToString(dataReader["Login"]), Convert.ToString(dataReader["Password"]));
                }
            }
            catch
            {

            }
            finally
            {
                if (dataReader != null)
                {
                    dataReader.Close();
                }
            }

            if (userData.ContainsKey(userLogin) && password == userData[userLogin])
            {
                var login = new HttpCookie("login", userLogin);
                var sign = new HttpCookie("sign", SignGenerator.GetSign(userLogin + "byteapp"));

                Response.Cookies.Add(login);
                Response.Cookies.Add(sign);
                Response.Redirect("UserPage.aspx", false);
                return;
            }

            if (!userData.ContainsKey(userLogin))
            {
                var script = "alert ('Неверное имя пользователя или пароль!')";
                ClientScript.RegisterClientScriptBlock(GetType(), "MessageBox", script, true);
                Request.Form["UserLogin"] = "";
                return;
            }

            
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            if (con != null && con.State != System.Data.ConnectionState.Closed)
            {
                con.Close();
            }
        }
    }
}