<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Account Register Page </title>
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
-->
</style>
<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.accno.value;
if(na3=="")

{
alert("Please Enter Account number");
document.s.accno.focus();
return false;
}
else
{

}
var na4=document.s.branch.value;
if(na4=="")

{
alert("Please Enter Branch");
document.s.branch.focus();
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


var na8=document.s.address.value;
if(na8=="")

{
alert("Please Enter the Address ");
document.s.address.focus();
return false;
}

var na9=document.s.amount.value;
if(na9=="")

{
alert("Please Enter Amount");
document.s.amount.focus();
return false;
}


}
</script>   

<style type="text/css">
<!--
.style1 {font-size: 36px}
.style3 {color: #FF00FF}
-->
</style>
</head>
 <%@ include file="connect.jsp" %>
                      <%@ page import="java.io.*" %>
                      <%@ page import="java.util.*" %>
                      <%@ page import="com.oreilly.servlet.*" %>
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
           <h2><span class="style3">User Bank Acccount Registration</span></h2>
	   
	  
                      <%
			       
					String uname=(String)application.getAttribute("uname");
	                    String query1="select * from user  where username='"+uname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
					if ( rs1.next() )
					   {
					   String s1=rs1.getString("email");
					   String s2=rs1.getString("mobile");
					    String s3=rs1.getString("address");
					   
	   %>
	   
        <form name="s" action="User_Acc_Reg_ins.jsp" method="post" onSubmit="return valid()"  ons target="_top"> 
                      
                          <label for="name"><span class="style3">Account Number(required)</span></label>

                        <p class="style3">
                          <input id="name" name="accno" class="text" />
                        </p>
                        <span class="style3">
                        <label for="password">Branch (required)</label>
                        </span>
                        <p class="style3">
                          <input type="text" id="branch" name="branch" class="text" />
                        </p>
                        <span class="style3">
                        <label for="email">Email Address (required)</label>
                        </span>
                        <p class="style3">
                          <input type="text" id="em" name="email" class="text" value="<%=s1%>" />
                        </p>
                        <span class="style3">
                        <label for="mobile">Mobile Number (required)</label>
                        </span>
                        <p class="style3">
                          <input id="mobile" name="mobile" class="text" value="<%=s2%>"/>
                        </p>
                        <span class="style3">
                        <label for="address">Your Address</label>
                        </span>
                        <p class="style3">
                           <input type="text" id="address" name="address" class="text" value="<%=s3%>"/>
                        </p>
                        
                          <span class="style3">
                          <label for="amount">Amount (required)</label>
                          </span>
                          <p>
                          <input id="amount" name="amount" class="text" />
                        </p>
                        <p><br />
                            <input name="submit" type="submit" value="Create Account" />
                        </p>
                        <p>&nbsp;</p>
                        <h5 align="center"> <a href="Account_Management.jsp">Back</a></h5>
        </form>
          <%}%>
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
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">User Home</a></li>
            <li><a href="U_Login.jsp">LogOut</a></li>
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
