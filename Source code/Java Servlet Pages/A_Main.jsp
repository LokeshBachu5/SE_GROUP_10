<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main Page</title>
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
.style4 {color: #FF00FF}
-->
</style>
</head>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date,java.util.Calendar" %>
<%@ page import="java.sql.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
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
          <li class="active"><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li><a href="U_Login.jsp"><span>User</span></a></li>
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
          <h2><span class="style4">Wel-Come Admin</span></h2>
          <p>&nbsp;</p>
          <p><img src="images/User.jpg" width="620" height="464" /></p>
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
          <h2 class="star"><span class="style4">Admin Menu </span></h2>
          <ul class="sb_menu style2">
            <li><a href="A_AuthorizeUsers.jsp">View All Users And Authorize</a></li>
			<li><a href="A_Android_users.jsp">View All Android Users</a></li>
			
			
			
            <li><a href="A_AllFrdReqResp.jsp">View Friend Request And Responses</a></li>
			<li><a href="A_UnBlockReq.jsp">View All Unblock Request And Unblock</a></li>
			<li><a href="A_AllUserAdvertise.jsp">View All Users Advertisement With Rank And Rating</a></li>
			<li><a href="A_MalaciousFileUser.jsp">View All Malacious Users Details</a></li>
			<li><a href="A_AllUserRecomend.jsp">View All Advertisement Recommended Users Details</a></li>
			<li><a href="A_UserAdvReq.jsp">View Advertisement Request Users </a></li>
			<li><a href="A_MalaciousAmtUser.jsp">View Malacious Publishers</a></li>
			
						<li><a href="A_View_Hidden_Attackers.jsp">View All Android Hidden Attackers</a></li>
			<li><a href="A_ExpiredAdvertises.jsp">View All Expired Advertisement</a></li>
			<li><a href="A_BlockedUsers.jsp">View All Blocked Users </a></li>
			<li><a href="A_BlockEvidense.jsp">View All Blocked Users Evidence </a></li>
			<li><a href="A_MalacNormUseChart.jsp">View User Type Count In Chart</a></li>
			<li><a href="A_AdvChartDetail.jsp">View All Advertisement Ranks In Chart</a></li>
			<li><a href="A_Login.jsp">LogOut</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"><a href='http://all-free-download.com/free-website-templates/'></a></div>
    </div>
  </div>
</div>
</body>
</html>
