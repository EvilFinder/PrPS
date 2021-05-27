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
    public partial class Registration : System.Web.UI.Page
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
            var getUsersCredits = new SqlCommand("SELECT [Login], [Password] FROM [Table]", con);

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

            var (login, password, confirmPassword, email) = (Request.Form["UserLogin"], Request.Form["UserPassword"], Request.Form["ConfirmPassword"], Request.Form["UserEmail"]);
            if (userData.ContainsKey(login))
            {
                var script = "alert ('Такой логин уже есть!')";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "MessageBox", script, true);
                return;
            }

            if (password != confirmPassword)
            {
                var script = "alert ('Пароли не совпадают!')";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "MessageBox", script, true);
                return;
            }
            var regUser = new SqlCommand("INSERT INTO [Table] (Login, Password, Email) VALUES(@Login, @Password, @Email)", con);
            regUser.Parameters.AddWithValue("Login", login);
            regUser.Parameters.AddWithValue("Password", password);
            regUser.Parameters.AddWithValue("Email", email);

            await regUser.ExecuteNonQueryAsync();
            Response.Redirect("Login.aspx", false);  
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