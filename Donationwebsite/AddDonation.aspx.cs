using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donationwebsite
{
    public partial class AddDonation : System.Web.UI.Page
    {
        
        public string newDonalert = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || Session["donater"] == null)
            {
               
                Response.Redirect("Home.aspx");
            }
            if (Request.HttpMethod == "POST")
            {
                
                string Name = Request.Form["Name"];
                string Moneyneed = Request.Form["Moneyneed"];
                string Lifestory = Request.Form["Lifestory"];
                string needfor = Request.Form["moneyfor"];
                string fav = Request.Form["fav"];
                string Img = Request.Form["Img"];
                
             
                SqlConnection connection = new SqlConnection(Databasecon.ConnectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                
                command.CommandText = String.Format("INSERT INTO Donations (Name, Moneyneed, Lifestory, needfor, fav, Img)  VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}'); ", Name, Moneyneed, Lifestory, needfor, fav,Img);
                try
                {

                    command.ExecuteNonQuery();

                    newDonalert = "<img src=\"" + Img + "\"/>";


                }
                catch { newDonalert = "<script> alert(\"------\"); </script>"; }
           

                connection.Close();
                

            }
        }

    }
}