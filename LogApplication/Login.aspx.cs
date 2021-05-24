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

            getUsersCredits.Parameters.AddWithValue("Login", TextBox1.Text);
            getUsersCredits.Parameters.AddWithValue("Password", TextBox2.Text);
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

            if (userData.ContainsKey(TextBox1.Text) && TextBox2.Text == userData[TextBox1.Text])
            {
                var login = new HttpCookie("login", TextBox1.Text);
                var sign = new HttpCookie("sign", SignGenerator.GetSign(TextBox1.Text + "byteapp"));

                Response.Cookies.Add(login);
                Response.Cookies.Add(sign);
                Response.Redirect("UserPage.aspx", false);
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