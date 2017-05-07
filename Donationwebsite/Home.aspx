<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Donationwebsite.WebForm3" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Donate a Society & People Category Flat Bootstrap Responsive  Website Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
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
<link href='//fonts.googleapis.com/css?family=Karla:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Archivo+Narrow:400,700' rel='stylesheet' type='text/css'>
<!--google fonts-->
<!-- animated-css -->
		<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
<!-- animated-css -->
<script src="js/responsiveslides.min.js"></script>
 <script>
    // You can also use "$(window).load(function() {"
    $(function () {
      // Slideshow 1
      $("#slider1").responsiveSlides({
         auto: true,
		 nav: true,
		 speed: 500,
		 namespace: "callbacks",
      });
    });
  </script>

</head>
<body>
<!--banner start here-->


    <%=str %>



<div class="ban-mother-grid">
<div class="slider">
		    <ul class="rslides" id="slider1">
		      <li>
		      	<div class="banner">
					
				</div>
		      </li>
		      <li>
		      	<div class="banner2">
					
				</div>
		      </li>
		      <li>
		      	<div class="banner3">
					
				</div>
		      </li>
		    </ul>
 </div>	
<div class="header">
	<div class="container">
			   <div class="logo wow bounceInLeft" data-wow-delay="0.3s">
			     <h1><a href="index.html">Donate</a></h1>
			   </div>
			  
			    <div class="clearfix">
                    <form id="SignIn" method="post" class="form-horizontal"  runat="server"  >
                        <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit"  class=="btn btn-default" >Log out</button>
        </div>
                           
      </div>
        </form>                
                        
                        
                        
                        </div>
    </div>	    
</div>
 <!--navgation start here-->
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
					   $( "span.menu" ).click(function() {
						 $( "ul.res" ).slideToggle( 300, function() {
						 // Animation complete.
						  });
						 });
					</script>
	<!-- /script-for-menu -->
</div>	
</div>
<!--navgation end here-->
<!--banner end here-->
<div class="banner-strip">
	<div class="container">
		<div class="bann-strip-main">
			   <div class="col-md-4 bann-strip-grid">
			   	  <div class="col-md-4 b-strip-left">
			   	  	 <span class="glyphicon glyphicon-leaf hovicon effect-4 sub-b" aria-hidden="true"> </span>
			   	  </div>
			   	  <div class="col-md-8 b-strip-right">
			   	  	 <h4>HELP</h4>
			   	  </div>
			   	  <div class="clearfix"> </div>
			   </div>
			   <div class="col-md-4 bann-strip-grid">
			   	  <div class="col-md-4 b-strip-left">
			   	  	 <span class="glyphicon glyphicon-eye-open hovicon effect-4 sub-b" aria-hidden="true"> </span>
			   	  </div>
			   	  <div class="col-md-8 b-strip-right">
			   	  	<h4>CARE</h4>
			   	  </div>
			   	  <div class="clearfix"> </div>
			   </div>
			   <div class="col-md-4 bann-strip-grid">
			   	  <div class="col-md-4 b-strip-left">
			   	  	<span class="glyphicon glyphicon-education hovicon effect-4 sub-b" aria-hidden="true"> </span>
			   	  </div>
			   	  <div class="col-md-8 b-strip-right">
			   	  	<h4>GIVE</h4>
			   	  </div>
			   	  <div class="clearfix"> </div>
			   </div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--vedio block start here-->
<div class="vedio">
	<div class="container">
		<div class="vedio-main">
			<div class="col-md-6 vedio-left wow fadeInLeft" data-wow-delay="0.3s">
				<h2>WHO WE ARE</h2>
				<p>Donate helps Elders,children and adults to overcome diseases and rase money for necessary medical procedures. Donate is crowdfunding website. where people can donate money to specific people and not to organizations
                    that way people can feel that there money is used and can see how there money is used and how it save lives.
				</p>
			</div>
			
		</div>
	</div>
</div>
<!--vedio block end here-->
<!--charity strip start here-->
<div class="charity">
	<div class="container">
		<div class="charity-main wow fadeInRight" data-wow-delay="0.3s">
			<h3>No one has ever become Poor by Giving</h3>
	
		</div>
	</div>
</div>
<!--charity strip end here-->

  
</body>
</html>
