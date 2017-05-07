using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donationwebsite
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public string str="";

        protected void Page_Load(object sender, EventArgs e)
        {   
           
           
            if (Request.HttpMethod == "POST")
            {
                Session["Id"] = null;
                    Session["donater"] = null;
                str = "<script> alert(\"you logged out\"); </script>";

            }

        }
    }
}