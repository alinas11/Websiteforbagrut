<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllDonations.aspx.cs" Inherits="Donationwebsite.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Donate Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Karla:400,700' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Archivo+Narrow:400,700' rel='stylesheet' type='text/css'/>
<!--google fonts-->

</head>
<body>

    <!--banner start here-->
<div class="banner1">
	<div class="header1">
   <div class="container">
     <div class="header-main">
	   <div class="logo">
	     <h1><a href="index.html">Donate</a></h1>
	   </div>

	    <div class="clearfix">today logged in <%=Application["numsignup"] %> users </div>
      </div>
    </div>
  </div>
<div class="top-nav-main">
<div class="top-nav">
            	<span class="menu"> <img src="images/icon.png" alt=""></span>	
				<ul class="res">
					<li><a class="active" href="Home.aspx" id="a1"><i class="glyphicon glyphicon-home"> </i>Home</a></li>
			<li><a href="AllDonations.aspx" id="a2"><i class="glyphicon glyphicon-user" > </i>All donations</a></li>
			<li><a href="AddDonation.aspx" id="a3"><i class="glyphicon glyphicon-list-alt"> </i>Add new Donation</a></li>
			<li><a href="SignIn.aspx" id="a4"><i class="glyphicon glyphicon-picture"> </i>Log in</a></li>
			<li><a href="Signup.aspx" id="a5"><i class="glyphicon glyphicon-envelope"> </i>Sign UP</a></li>
				</ul>
				<!-- script-for-menu -->
							 <script>
                                 $("span.menu").click(function () {
                                     $("ul.res").slideToggle(300, function () {
                                         // Animation complete.
                                     });
                                 });
							</script>
			<!-- /script-for-menu -->
	  </div>
  </div>		
</div>	
<!--banner end here-->
     <br/><br/><br/><br/><br/>
    <div style=" width: 80%;   margin: auto; ">
			<div class="team-top" style="visibility: visible;" animation-delay: 0.3s; animation-name: fadeInDown;">
				<h3>Donations</h3>
                </div>
       
   
      
		<%=AllD %>
   <%=ac %>
    </div>
</body>
</html>
