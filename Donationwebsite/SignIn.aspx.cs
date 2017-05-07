using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donationwebsite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string str = "";
        public string alert = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                str = "<script> alert(\"you allready signed in, but you can still sign up if you have another id;) and you need to log out first\"); </ script > ";
                Response.Redirect("Home.aspx");
            }

            if (Request.HttpMethod == "POST")
            {


                int id = int.Parse(Request.Form["IDnumber"]);
                string password = Request.Form["Password"];
               
                SqlConnection connection = new SqlConnection(Databasecon.ConnectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandText = string.Format("SELECT * FROM Users1 WHERE Id = '{0}';", id);
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    if (reader.GetString(3) == password)
                    {
                        Session["Id"] = id;
                        if (!(reader.GetString(4)=="True"))
                            Session["donater"] = null;
                        else
                            Session["donater"] = 4;

                        Application.Lock();
                        if (Application["numsignup"]==null)
                        {
                            Application["numsignup"] = 0;

                        }
                        
                        Application["numsignup"] = (int)Application["numsignup"] + 1;
                        Application.UnLock();


                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        alert = "<div class=\"alert alert-danger\" role=\"alert\"  id=\"eroralert\"> <strong>Oh there is a Problem</strong> Login failed, Check Id and password</ div >";
                    }
                }
                else
                {
                    alert = "<div class=\"alert alert-danger\" role=\"alert\"  id=\"eroralert\"> <strong>Oh there is a Problem</strong> Login failed, Check Id and password</ div >";
                }
                reader.Close();
                connection.Close();
                


            }
        }
    }
}