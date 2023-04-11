<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Register Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {
	font-weight: bold;
	font-style: italic;
	color: #000000;
}
.style3 {color: #FF00FF}
-->
</style>
<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}



var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.email.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.email.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na5=document.s.pic.value;
if(na5=="")

{
alert("choose profile pic");
document.s.pic.focus();
return false;
}

var dob=document.s.dob.value;
if(dob=="")

{
alert("please Enter Your Date Of Birth");
document.s.dob.focus();
return false;
}

var na8=document.s.address.value;
if(na8=="")

{
alert("Please Enter the Address ");
document.s.address.focus();
return false;
}

var na9=document.s.gender.value;
if(na9=="--Select--")

{
alert("Please Select Your Gender");
document.s.gender.focus();
return false;
}

var na11=document.s.loc.value;
if(na11=="")

{
alert("Please Enter Your Location");
document.s.loc.focus();
return false;
}


}
</script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">Understanding In-app Ads and Detecting Hidden Attacks through the Mobile App-Web Interface</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2> <span class="style6"><em><strong>Welcome to User Register</strong></em></span> </h2>
          <p><img src="images/Register.png" width="196" height="161" /></p>
          <form name="s" action="U_RegIns.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top"> 
            <label for="name"><span class="style45"><span class="style31"><br />
            (<span class="style6 style3">*</span>) Required </span><br />
            </span></label>
            <table width="517" height="459" border="0" cellpadding="2" cellspacing="2">
              <tr>
                <td width="126"><span class="style33 style6 style3">
                  <label for="label"><strong>User Name *</strong></label>
                </span></td>
                <td width="377"><span class="style45">
                  <input name="userid" class="text" id="name" size="30" />
                </span></td>
              </tr>
              <tr>
                <td><span class="style33 style6 style3">
                  <label for="label"><strong>Password *</strong></label>
                </span></td>
                <td><span class="style45">
                  <input name="pass" type="password" class="text" id="password" size="30" />
                </span></td>
              </tr>
              <tr>
                <td><span class="style33 style6 style3">
                  <label for="label"><strong>Email-Id<strong> *</strong></strong></label>
                </span></td>
                <td><span class="style45">
                  <input name="email" class="text" id="email" size="30" />
                </span></td>
              </tr>
              <tr>
                <td><span class="style33 style6 style3">
                  <label for="label"><strong>Mobile Number <strong>*</strong> </strong></label>
                </span> </td>
                <td><span class="style45">
                  <input name="mobile" class="text" id="mobile" size="30" />
                </span></td>
              </tr>
              
              <tr>
                <td><span class="style33 style6 style3">
                  <label for="gender"><strong>Date of Birth <strong>*</strong> </strong> </label>
                </span></td>
                <td><span class="style45">
                  <input name="dob" class="text" id="dob" size="30" />
                </span></td>
              </tr>
              <tr>
                <td><span class="style33 style6 style3">
                  <label for="gender"><strong>Select Gender * </strong></label>
                </span> </td>
                <td><span class="style38">
                  <select id="s1" name="gender" style="width:224px;" class="text">
                    <option>--Select--</option>
                    <option>MALE</option>
                    <option>FEMALE</option>
                  </select>
                </span></td>
              </tr>
			  <tr>
                <td><span class="style33 style6 style3">
                  <label for="label"><strong>Your Address <strong>*</strong> </strong> </label>
                </span></td>
                <td><textarea id="address" name="address" rows="2" cols="31"></textarea></td>
              </tr>
			  <tr>
                <td><span class="style33 style6 style3">
                  <label for="gender"><strong>Enter Location * </strong></label>
                </span> </td>
                <td><span class="style45">
                  <input type="text" name="loc" class="text" id="loc" size="30" />
                </span></td>
              </tr>
              <tr>
                <td><span class="style33 style6 style3">
                  <label for="label"><strong>Select Profile <strong> *</strong> </strong></label>
                </span></td>
                <td><input name="pic" type="file" class="text " id="pic" />                </td>
              </tr>
              <tr>
                <td colspan="2"><div align="center" class="style3">
                    <input name="submit" type="submit" value="REGISTER" style="width:170px;height:40px;font-weight:bold;background-color:#0099FF;border-radius:10%;" />
                </div></td>
              </tr>
            </table>
            <p align="right"><a href="U_Login.jsp" class="style3"><strong>Back</strong></a></p>
          </form>
        </div>
        </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <ul class="sb_menu style2">
            <li><a href="index.html">Home</a></li>
            <li><a href="A_Login.jsp">Admin</a></li>
            <li><a href="U_Login.jsp">User</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"><a href='http://all-free-download.com/free-website-templates/'></a></div>
    </div>
  </div>
</div>
</body>
</html>
