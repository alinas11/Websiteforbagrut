<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Donationwebsite.Signup" %>

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
<script type="text/javascript">
    function Disablefieldset()
    {
            document.getElementById("IBAN").disabled = true;
    }    
    function Enablefieldset() {
        document.getElementById("IBAN").disabled = false;
    }    

</script>
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
    <form id="Signup" method="post" class="form-horizontal"  runat="server" onsubmit="return FormValid()"  >
     <div>
            <h3 class="typo1">Sign Up</h3>
         <div class="bs-example" data-example-id="simple-horizontal-form">

        <div class="form-group">
        <label  class="col-sm-2 control-label">First Name</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="Firstname" name="Firstname" placeholder="First Name"/>
        </div>
      </div>

         <div class="form-group">
        <label  class="col-sm-2 control-label">Last Name</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="Lastname" name="Lastname" placeholder="Last Name"/>
        </div>
      </div>



        <div class="form-group">
           <label  class="col-sm-2 control-label">ID Number</label>
           <div class="col-sm-10">
               <input type="number" class="form-control" id="IDnumber" name="IDnumber" placeholder="ID Number"/>
             </div>
         </div>


      <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
        <div class="col-sm-10">
          <input type="email" class="form-control" id="Email" name="Email" placeholder="Email"/>
        </div>
      </div>

      <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
        <div class="col-sm-10">
          <input type="password" class="form-control" name="Password" id="Password" placeholder="Password"/>
        </div>
      </div>

             <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">Confirm Password</label>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="PasswordC" placeholder="Confirm Password"/>
        </div>
      </div>


   
                       <br />  <br /> 
             <h2 id="h2-bootstrap-heading"> Payment Information </h2>
                         <br />  <br /> 
               <div class="form-group">
        <label  class="col-sm-2 control-label">Credit Card Number</label>
        <div class="col-sm-10">
          <input type="number" class="form-control" id="creditcardnum" name="creditcardnum" placeholder="Credit Card Number"/>
        </div>
      </div>

              <div class="form-group">
        <label  class="col-sm-2 control-label">Credit Card Issuing network</label>
        <div class="col-sm-10">
          <select id="cardcomp" name="cardcomp">
                
                  <option value="Visa">Visa</option>
              <option value="American Express">American Express</option>
                  <option value="MasterCard">MasterCard</option>
               </select>
        </div>
      </div>
             
               <div class="form-group">
         <label  class="col-sm-2 control-label">Would you like to Apply for a donation? (you can change your mind later) </label>
        <div class="col-sm-offset-2 col-sm-10">
          <div class="checkbox">
            <label>
              <input type="radio" id="needdonation1"  name="needdonation" value="true" onclick="Enablefieldset()" />Yes
            </label>
              <label>
              <input type="radio" id="needdonation2" name="needdonation" checked="checked"  value="false" onclick="Disablefieldset()"/>No, I am just donating
            </label>
          </div>
        </div>
      </div>

                
             
                    <br />  <br /> 
             <h2 id="h2-bootstrap-heading"> Bank acount Information </h2>
                   <h3>in a case your in a need for a donation</h3> 
                         <br />  <br /> 

            
                           <div class="form-group">
        <label  class="col-sm-2 control-label">  International Bank Account Number</label>
        <div class="col-sm-10">
          <input disabled="disabled" type="text" class="form-control" id="IBAN" name="IBAN" placeholder="International Bank Account Number">
        </div>
      </div>
`   

                     
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit"  class=="btn btn-default" >Sign Up</button>
        </div>
      </div>
        </div>
         </div>
    </form>
   
    <div class="alert alert-danger" role="alert" style="visibility:hidden" id="eroralert">
        <strong>Oh there is a Problem</strong> change theese then try again:<div id="alertcontent"></div>
      </div>

    <%=alertcon %>
    <%=str %>
        </div>
</body>
</html>
