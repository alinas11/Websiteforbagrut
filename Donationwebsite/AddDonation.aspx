<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDonation.aspx.cs" Inherits="Donationwebsite.AddDonation" %>

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
    <script type="text/javascript" src="Main.js"></script>

</head>
<body >
    <!--banner start here-->
<div class="banner1">
	<div class="header1">
   <div class="container">
     <div class="header-main">
	   <div class="logo">
	     <h1><a href="index.html">Donate</a></h1>
	   </div>

	    <div class="clearfix"> </div>
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
    <form id="AddDon" method="post" class="form-horizontal"  runat="server" onsubmit="return DonValid()"  >
     <div>
            <h3 class="typo1">New Donation</h3>
         <div class="bs-example" data-example-id="simple-horizontal-form">

        <div class="form-group">
        <label  class="col-sm-2 control-label">Name</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="Name" name="Name" placeholder="Name"/>
        </div>
      </div>

         <div class="form-group">
        <label  class="col-sm-2 control-label">amount of Money needed</label>
        <div class="col-sm-10">
          <input type="number" class="form-control" id="Moneyneed" name="Moneyneed" placeholder="amount of Money needed"/>
        </div>
      </div>



        <div class="form-group">
           <label  class="col-sm-2 control-label">Life story</label>
           <div class="col-sm-10">
               <input type="text" class="form-control" id="Lifestory" name="Lifestory" placeholder="Life story"/>
             </div>
         </div>


      <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Money needed for:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="moneyfor" name="moneyfor" placeholder="Money needed for:"/>
        </div>
      </div>

      <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">Faviorite Food/color/toy/book/movie...</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="fav" id="fav" placeholder="Faviorite Food/color/toy/book/movie..."/>
        </div>
      </div>

             <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">Image</label>
        <div class="col-sm-10">
          <input type="url" class="form-control" id="Img" name="Img" />
        </div>
      </div>

                     
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit"  class=="btn btn-default" >Add</button>
        </div>
      </div>
        </div>
         </div>
    </form>
    
   <div class="alert alert-danger" role="alert" style="visibility:hidden" id="eroralert1"> 
        <strong>Oh there is a Problem</strong> change theese then try again:<div id="alertcontent1"></div>
      </div>
   
   <%=newDonalert %>

        </div>
</body>
</html>