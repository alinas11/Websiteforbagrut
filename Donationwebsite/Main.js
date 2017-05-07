
function FormValid() {
    var alert = "";
    var needdon=false;
   var id = document.getElementById("IDnumber").value;
    var Firstname = document.getElementById("Firstname").value;
    var Lastname = document.getElementById("Lastname").value;
    var email = document.getElementById("Email").value;
    var password = document.getElementById("Password").value;
    var passwordc = document.getElementById("PasswordC").value;
    var CCN = document.getElementById("creditcardnum").value;
    var Cardcomp = document.getElementById("cardcomp").value;
    if (document.getElementById("needdonation1").checked==true)
         needdon = true;
    var IBAN = document.getElementById("IBAN").value;
   if (id.length!= 9)
       alert = alert + "id should be a number with 9 digits" + "<br/>";
   if (!password.localeCompare(passwordc) == 0)
       alert = alert + "passwords dont match" + "<br/>";
   if (!(password.length > 5 && password.length < 51))
       alert = alert + "passwords shoud be at least 6 charcters and maximum 50 characters" + "<br/>";
   if ((!email.includes("@")) || email[0] == "@" || email[email.length-1] == "@" || email[0] == "." || email[email.length-1] == "." || (!email.includes(".")))
       alert = alert + "Email not valid" + "<br/>";
   if (Firstname.length == 0 || Firstname.length>50)
       alert = alert + "enter first name thats  maximum 50 characters" + "<br/>";
   if (Lastname.length == 0 || Lastname.length>50)
        alert = alert + "enter Last name" + "<br/>";
    if (needdon == true && IBAN.length == 0)
        alert = alert + "Enter International Bank Account Number" + "<br/>";
    if (!(IBAN.charCodeAt(0) > 65 && IBAN.charCodeAt(0) < 90 && IBAN.charCodeAt(0) > 65 && IBAN.charCodeAt(0) < 90 && IBAN.length == 34) && needdon == true)
        alert = alert + "not valid International Bank Account Number" + "<br/>";
   
  switch(Cardcomp)
    {
        case "American Express":
            if (!(CCN.length == 15 && CCN[0] == 3 && (CCN[1] == 4 || CCN[1] == 7)))
                alert = alert + "not valid CreditCard Number or company dosent match card number" + "<br/>";
            break;
        case "Visa":
            if (!((CCN.length == 13 || CCN.Length == 16) && CCN[0] == 4))
                alert = alert + "not valid CreditCard Number or company dosent match card number" + "<br/>";
            break;
        case "MasterCard":
            if (!(CCN.length == 16 && CCN[0] == 5 && (CCN[1] >= 1 && CCN[1] <= 5)))
                alert = alert + "not valid CreditCard Number or company dosent match card number" + "<br/>";
            break;
    }
        if (alert.valueOf()!="")
    {
        
        document.getElementById("alertcontent").innerHTML = alert;
        document.getElementById("eroralert").style.visibility = "visible";
        return false;

            }

        return true;
    
    
}

function DonValid()
{
    var alert1 = "";
    var Name = document.getElementById("Name").value;
    var Moneyneed = document.getElementById("Moneyneed").value;
    var Lifestory = document.getElementById("Lifestory").value;
    var needfor = document.getElementById("moneyfor").value;
    var fav = document.getElementById("fav").value;
    var Img = document.getElementById("Img").value;
    
   if (Name.length == 0 || Moneyneed.length == 0 || Lifestory.length == 0 || needfor.length == 0 || fav.length == 0 || Img.length == 0)
       alert1 = alert1 + "Enter values in all fields" + "<br/>";
   if (Name.length > 50)
        alert1 = alert1 + "Name to long" + "<br/>";
    if (Moneyneed.length > 50)
        alert1 = alert1 + "Thats a lot of money,are your sure? check to see if a mistake was made" + "<br/>";
    if (Lifestory.length > 500)
        alert1 = alert1 + "Life story to long" + "<br/>";
    if (needfor.length > 50)
        alert1 = alert1 + "reason for needing donation to long" + "<br/>";
    if (fav.length > 50)
        alert1 = alert1 + "faviorite thing to long" + "<br/>";
    if (Img.length > 124)
        alert1 = alert1 + "Url to long, please make it shorter" + "<br/>";
     
    if (alert1.valueOf()!= "")
    {
        document.getElementById("alertcontent1").innerHTML = alert1;
        document.getElementById("eroralert1").style.visibility = "visible";

        return false;
    }

    return true;
}

