<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User All My Friends </title>
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
          <h2><span class="style3">All My Friends</span></h2>
	      <p>&nbsp;</p>
	   <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#993366">
					  <td  width="120" height="31" align="center" valign="baseline" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
  						
					  <td  width="100" height="31" align="center" valign="baseline" style="color: #2c83b0;"><div align="center"><b>View</b></div></td>
					</tr>
								
<%@ include file="connect.jsp" %>
					<%String user=(String )application.getAttribute("uname");
						
						int i=0,count=0;
						try 
						{
						   	String sql1="select * from req_res where (requestfrom='"+user+"'||requestto='"+user+"')&& status='Accepted'";
								Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(sql1);
					   			while( rs2.next() )
								{
								i=rs2.getInt(1);
								String rf=rs2.getString(2);
								String rt=rs2.getString(3);
								
								count++;
								
								if(rf.equalsIgnoreCase(user))
								{
					%>
					<tr bgcolor="#FFFFFF">
						<td  width="120" height="40" align="center" valign="middle" style="color:#000000;"><span class="style7">&nbsp;&nbsp;
				        <%out.println(rt);%>
					  </span></td>
						<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
							<a href="U_FriendProfile.jsp?type1=<%=rt%>&type=<%="user1"%>" class="style9">more info..&nbsp;</a></td>
						<%
						//application.setAttribute("name",rt);
						}
						else 
						{%>	
						<td  width="100" height="40" align="center" valign="middle"><span class="style7">&nbsp;&nbsp;
				        <%out.println(rf);%>
					  </span></td>
						<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
							<a href="U_FriendProfile.jsp?type1=<%=rf%>&type=<%="user1"%>" class="style9">more info..&nbsp;</a></td>
						<%//application.setAttribute("name",rf);
						}
						
						%>
		  </tr>
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("You Have No Friends");}
					
					%>
		</table>
	  <h2>&nbsp;</h2>
			<p align="right"><a href="U_Main.jsp" class="style2">Back</a></p>
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
