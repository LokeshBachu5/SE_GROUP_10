<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin User Blocked Evidense</title>
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
        <h1><a href="index.html" class="style1">Leveraging Crowdsourcing for Efficient Malicious Users Detection in Large-Scale Social</a></h1>
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
         <h2 class="style3"><span class="style3">All Malacious Users Records With Ip Address</span></h2>
		 <p><table width="500" border="1" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#00FFFF">
			<td width="127" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style4 style14 style7 style3" style="	margin-left:20px;"><h3>Malacious Type</h3></div></td>
			<td width="127" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style4 style14 style7 style3" style="	margin-left:20px;"><h3>Malacious User Name</h3></div></td>
			<td width="100" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style4 style14 style7 style3" style="margin-left:20px;"><h3>IP Address</h3></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style4 style14 style7 style3" style="margin-left:20px;"><h3>Blocked Date</h3></div></td>
			</tr>
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s33;
						int i=0,count=0;
						try 
						{
							String sql="select * from malacious ";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
							
								count++;
					%>
		<tr>
		<% if(s1.equalsIgnoreCase("virus")){%>
				 <td  width="182" valign="middle" height="44" style="color:#000000;">
			<div align="left" class="style6 style10" style="margin-left:20px;">Adding Virus Files</div></td>
			<%}else{%>
			 <td  width="182" valign="middle" height="44" style="color:#000000;">
			<div align="left" class="style6 style10" style="margin-left:20px;">Advertised Without Sufficient Amount</div></td>
			<%}%>
			  <td  width="182" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><a href="A_UserProfile.jsp?type1=<%=s2%>&type=<%="mal"%>"><%=s2%></a></div></td>
			    <td  width="182" valign="middle" height="44" style="color:#000000;">
			<div align="left" class="style6 style10" style="margin-left:20px;"><%=s3%></div></td>
			  <td  width="182" valign="middle" height="44" style="color:#000000;">
			<div align="left" class="style6 style10" style="margin-left:20px;"><%=s4%></div></td>
     </tr>
<%					
					}
						if(count==0){
										out.print("There is No Malacious Publishers Found");
								}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

			</table>
	  <h2>&nbsp;</h2>
			<p align="right"><a href="A_Main.jsp" class="style2">Back</a></p>
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
            <li><a href="A_Main.jsp">Admin Home</a></li>
            <li><a href="A_Login.jsp">LogOut</a></li>
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
