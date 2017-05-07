using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donationwebsite
{
    public partial class Signup : System.Web.UI.Page
    {
        public string str = "";
        public string alertcon = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                str = "<script> alert(\"you allready signed in, but you can still sign up if you have another id;) and you need to log out first\"); </script>";
               
                Response.Redirect("Home.aspx");
            }
            if (Request.HttpMethod == "POST")
            {

                
                int id = int.Parse(Request.Form["IDnumber"]);
                string Firstname = Request.Form["Firstname"];
                string Lastname = Request.Form["Lastname"];
                string email = Request.Form["Email"];
                string password = Request.Form["Password"];
                long CCN = long.Parse(Request.Form["creditcardnum"]);
                string Cardcomp = Request.Form["cardcomp"];
                bool needdon = bool.Parse(Request.Form["needdonation"]);
                string IBAN = Request.Form["IBAN"];


                SqlConnection connection = new SqlConnection(Databasecon.ConnectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandText = String.Format("INSERT INTO Users1 (Id, Firstname, Lastname, password, status, bank, creditcard, IBAN, email) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}');", id, Firstname, Lastname, password, needdon, Cardcomp, CCN, IBAN, email);
                
                try
                {
                    
                    command.ExecuteNonQuery();
                    Session["ID"] = id;
                    if (!needdon)
                        Session["donater"] = null;
                    else
                        Session["donater"] = 4;


                    Application.Lock();
                    if (Application["numsignup"] == null)
                    {
                        Application["numsignup"] = 0;

                    }

                    Application["numsignup"] = (int)Application["numsignup"] + 1;
                    Application.UnLock();

                    alertcon = "<script> alert(\"you have signed up\"); </script>";

                     Response.Redirect("Home.aspx");


                }
                catch (SqlException)
                {
                    alertcon = "<div class=\"alert alert-danger\" role=\"alert\"  id=\"eroralert\"> <strong>Oh there is a Problem</strong> your allready signed up- try signing in</ div >";
                     
                }

                connection.Close();


            }
        }
       
            
       
    }
}
 