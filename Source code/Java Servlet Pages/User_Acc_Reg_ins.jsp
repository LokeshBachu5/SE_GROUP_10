<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Account Register Insert</title>
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
-->
</style>
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
     <p>
                      <%@ include file="connect.jsp" %>
                      <%@ page import="java.io.*" %>
                      <%@ page import="java.util.*" %>
                      <%@ page import="com.oreilly.servlet.*" %>
                      <%
			       
					String uname=(String)application.getAttribute("uname");
				
					try {
						
		String accno=request.getParameter("accno");
		String branch=request.getParameter("branch");
		String email=request.getParameter("email");
		String mno =request.getParameter("mobile");
		String addr =request.getParameter("address");
		String amount =request.getParameter("amount");
		
		
						
			 			String query1="select * from account where acc_no='"+accno+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
</p>
                    </p>
                    <p class="style6 style3">Account Number Already Exist</p>
                    <p class="style5">&nbsp;</p>
                    <%
							
				%>
                    <p align="left"><a href="User_Acc_Reg.jsp" class="style5 style14">Back</a></p>
                    <%
				
					   }
					   else
					   {
PreparedStatement ps=connection.prepareStatement("insert into account(acc_no,user,address,email,mob,branch,amount) values(?,?,?,?,?,?,?)");
						ps.setString(1,accno);
						ps.setString(2,uname);
						ps.setString(3,addr);
						ps.setString(4,email);	
						ps.setString(5,mno);
						ps.setString(6,branch);
						ps.setString(7,amount);
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <p class="style6 style4">Account Created Successfully</p>
                    <p>&nbsp; </p>
                    <p>
                      <%	
							
			%>
                    </p>
                    <p align="left"><a href="Account_Management.jsp" class="style16">Back</a></p>
                    <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                    </p>
<p>&nbsp;</p>
                    <p>&nbsp;</p>
        </form>
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
