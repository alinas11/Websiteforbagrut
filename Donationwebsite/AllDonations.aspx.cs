using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donationwebsite
{
    public partial class WebForm2 : System.Web.UI.Page
    {
         


    public string AllD = "";
        public string ac = "";
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                
                Response.Redirect("SignIn.aspx");
            }

            SqlConnection connection = new SqlConnection(Databasecon.ConnectionString);
            connection.Open();
              
            SqlDataReader don;
            SqlCommand cd = connection.CreateCommand(); //select curent donation
            SqlCommand rowcount = connection.CreateCommand();
            rowcount.CommandText = string.Format("SELECT Count(*) FROM Donations;");
            int numdon = (int)rowcount.ExecuteScalar();


            string super = "";

            for (int i=1; i<=numdon; i++)
            {
                cd.CommandText = string.Format("SELECT * FROM Donations WHERE ID={0};", i);
                 don = cd.ExecuteReader();
                don.Read();
               

                    super = super +
                    @"<div class=""panel panel-primary"" style=""width: 20%; display: inline-block;"" >
                        <div class=""panel-heading"">
                               <h3 class=""panel-title""><strong>Name:</strong>" + don.GetString(0) + @"</h3>
                        </div>
                            <div class=""panel-body"" >


                               <div class=""team - bottom"" style=""visibility: visible; animation - delay: 0.3s; animation - name: fadeInRight; "">
                                        <div class=""col-md-3 team-grids"" style="" width: 90%; margin: auto; "">

			                                 <div class=""ih-item circle effect5""><a href = ""#"" >

                                                     <div class=""img""><img src = """ + don.GetString(5)+@""" alt=""img"" class=""img-responsive"">
                                                     </div>
			                                         <div class=""info"">
			                                                <div class=""info-back"">
			                                                 <h3>" + don.GetString(0) + @"</h3>		          
			                                                 </div>			          
			                                         </div></a>
                                              </div>
			                                 <div class=""team-bottom"">
			        	                      <p>  <strong>I Like:</strong>" + don.GetString(4) + @"<br/>
                                               <strong>I need:</strong>" + don.GetValue(1) + @"$<br/>
                                                  <strong>I need it for:</strong>" + don.GetString(3) + @"<br/>
                                                  <strong>My story is:</strong>" + don.GetString(2) + @"<br/>
                                                 <strong>Money Donated:</strong>" + don.GetValue(7) + @"$<br/>
                                                <div class=""progress"">
                                                       <div class=""progress-bar progress-bar-success"" role=""progressbar""  style=""width:"+ don.GetDouble(7)/ don.GetDouble(1)*100  + @"%""></div>
                                                 </div>

                                        <form id=""AddDon"" method=""post"" class=""form - horizontal""  runat=""server""   >
                                            <div class=""form-group"">
                                                    <label class=""col-sm-2 control-label""></label>
                                                             <div class=""col-sm-10"">
                                                                     <input type = ""number"" class=""form-control"" name=""donmon"" placeholder=""XXXXXXX$ ""/>
                                                              </div>
                                           </div>

                                            <input type = ""number""  style=""visibility:hidden"" value="""+i+@""" name=""donnum"" />

                                             <div class=""form-group"">
                                                         <div class=""col-sm-offset-2 col-sm-10"">
                                                                 <button type = ""submit""  class==""btn btn-default"" >Donate</button>
                                                             </div>
                                              </div>
                                            </form>
                                               
          

          </p>
                                              </div>
                                      </div>
			                </div>
                    </div>

                     </div>        
            ";
            

                
            don.Close();

            }
            AllD = super; 
            connection.Close();




            if (Request.HttpMethod == "POST")

            {
                double money = int.Parse(Request.Form["donmon"]);
                int donnum = int.Parse(Request.Form["donnum"]);
                Donate(donnum, money);
                
            }


        }





        public void Donate (int donnum, double da)
        {
            SqlConnection connection = new SqlConnection(Databasecon.ConnectionString);
            connection.Open();
            SqlCommand cd = connection.CreateCommand();
             cd.CommandText = string.Format("SELECT * FROM Donations WHERE ID={0};", donnum);
              SqlDataReader don=cd.ExecuteReader();
              don.Read();
                da = da + don.GetDouble(7);
            double mongoal = don.GetDouble(1);
            if ( da<= mongoal)
            {
                don.Close();

                cd.CommandText = string.Format("UPDATE Donations SET Moneydonated={0} WHERE ID={1};", da, donnum);
                cd.ExecuteNonQuery();
                ac = "<script> alert(\"you have Donated Money\"); </script>";
            }
            else
                ac = "<script> alert(\"Wow your realy generous, The  person you were trying to donate only needs " + mongoal + "$ please donate the rest to other people, so you can save more lives\"); </script>";
        }
    }
}