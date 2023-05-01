<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Advertisement Request</title>
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
.style4 {color: #009900}
.style5 {color: #FF0000}
-->
</style>
</head>
 <%@ include file="connect.jsp" %>
          <%@ page import="java.util.*"%>
          <%@ page import="java.text.*"%>
          <%@ page import="java.util.Date"%>
          <%@ page import="java.sql.*"%>
          <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
          <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
          <%@ page import="org.bouncycastle.util.encoders.Base64"%>
          <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream"%>
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
          <h2><span class="style3">Ask Permission To Upload Advertisement Details</span></h2>
		  (<span class="style5">*</span>) <span class="style4">Make Sure That Account Should Have Sufficient Amount</span>
		  <%   
		
			String date1=request.getParameter("d1");
			String date2=request.getParameter("d2");
          	String uname=(String)application.getAttribute("uname");
		
		DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
				Date a=sdf.parse(date1);
				Date b=sdf.parse(date2);
				
				Calendar cal=Calendar.getInstance();
				
				if(a.before(b)){cal.setTime(a);}
				else{cal.setTime(b);
						b=a;}
				
				int c=0; int d3=0,dc=0; int cost=0;
				
				while(cal.getTime().before(b)){
				cal.add(Calendar.MONTH,1);
				c++;
				}	
				
				int d2=Integer.parseInt(date2.substring(0,2));
				int d1=Integer.parseInt(date1.substring(0,2));
				
				if(d1<d2)
				{
				    d3=d2-d1;
					c=c-1;
					dc=(1000/30)*d3;
				
				 cost=(c*1000)+dc;
				}
				else if(d1>d2)
				{
					d3=(30-d1)+d2;
					c=c-1;
					dc=(1000/30)*d3;
					
				 cost=(c*1000)+dc;
				}
				else if(d1==d2)
				{
				 cost=c*1000;
				}
				%>
				
		<form name="s" method="post" action="U_AskAdvReq1.jsp" onSubmit="return valid()"  ons>
	<table height="200" align="center" cellspacing="5">
	<tr>
	<td><table cellpadding="10">
	
	<tr>
	<td>
	  <div align="right" class="style4 style3"><span class="style13"><font size="+1"> From Date :</font></span></div></td>
	<td>
	  <input type="text" id="d1" name="d1" style="width:100%" value="<%=date1%>" />	 </td>
	</tr> 
  <tr>
	<td>
	  <div align="right" class="style4 style3"><span class="style13"><font size="+1"> To Date :</font></span></div></td> 
	 <td> <input type="text" id="d2" name="d2" style="width:100%" value="<%=date2%>" />	</td>
	</tr>
	
	<tr>
	<td>
	  <div align="right" class="style4 style3"><span class="style13"><font size="+1"> Cost :</font></span></div></td> 
	 <td> <input type="text" id="cost" name="cost" style="width:100%" value="<%=cost%>" />	</td>
	</tr>
	
	<tr>
	<td><span class="style3"></span></td>
	<td><input type="submit" value="Confirm Request" id="button1">
	<input type="reset" value="clear"></td>
		  </tr>
	</table>	</td>
	</tr>
	</table>
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