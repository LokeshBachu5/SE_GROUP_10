<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin All Users Recommend Details</title>
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
.style4 {font-size: 14px}
.style5 {color: #FF00FF}
.style6 {color: #FF0000}
.style7 {font-weight: bold}
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
        <h2 align="center"><span class="style9 style5">Advertisement <%=request.getParameter("aname")%> Details</span></h2>
         <h2>
            <%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
            <%
					   String type=request.getParameter("type");
						String s1,s2="",s3,s4,s5,s6,s7;
						int i=0,j=0;
						try 
						{
							String name=request.getParameter("aname");
							int id=Integer.parseInt(request.getParameter("id"));
							
							Statement st32 = connection.createStatement();
						   	String query="select * from advertisement where id='"+id+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString("advcat");
								s2=rs.getString("advname");
								s3=rs.getString("comname");
								s4=rs.getString("cestyear");
								s5=rs.getString("descr");
								s6=rs.getString("date");
								s7=rs.getString("username");
								int rank=rs.getInt("rank");	
								int k=rs.getInt("rate");
								 
							
					%>
					
					<table border="1" align="center" cellpadding="0" cellspacing="0" >
				 				<tr >
								    <td width="160" rowspan="12" bgcolor="#FFFFFF" ><div class="style22 style5 style7 style4" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                        <input  name="image" type="image" src="images.jsp?value=<%="image"%>&id=<%=i%>" style="width:120px; height:120px;"  />
								                                  </a> </div>
								  </div></td>
		  						<tr/>
									<td width="187" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style10 style7 style4 style6"><strong><span class="style17">Advertised User Name</span> </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style7 style4"><span class="style17" style="color:#FF0000;"><strong><a href="A_UserProfile.jsp?type1=<%=s7%>&type=<%="i"%>"> <%=s7%> </a></strong></span></div></td>
				    
				    
				    			<tr>
								<tr/>
									<td width="187" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style10 style7 style4 style6"><strong><span class="style17">Advertisement Category</span> </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style7 style4"><span class="style17" style="color:#000000;"><%= s1%></span></div></td>
				    
				    
				    			<tr>
									<td width="187" height="27" bgcolor="#FFFFFF">
						  		  <div align="center" class="style10 style7 style4 style6"><strong><span class="style17">Advertisement Name</span> </strong></div></td>
							      <td bgcolor="#FFFFFF"><div align="center" class="style7 style4"><span class="style17" style="color:#000000;"><%= s2%></span></div></td>
								</tr>
								<tr>
									<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7 style4 style6"><strong><span class="style17"><%=s1%> Description </span> </strong></div></td>
							      <td bgcolor="#FFFFFF"><div align="center" class="style7 style4"><span class="style17" style="color:#000000;"><%= s5%></span></div></td>
				    			</tr>
								<tr>
										<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7 style4 style6"><strong><span class="style17"><%=s1%> Company</span></strong></div></td>
						          <td bgcolor="#FFFFFF"><div align="center" class="style7 style4"><span class="style17" style="color:#000000;"><%= s3%></span></div></td>
								</tr>
								<tr>
								<tr>
										<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7 style4 style6"><strong><span class="style17">Company Estimation Year </span></strong></div></td>
						          <td bgcolor="#FFFFFF"><div align="center" class="style7 style4"><span class="style17" style="color:#000000;"><%= s4%></span></div></td>
								</tr>
								
								<tr>
										<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7 style4 style6"><strong><span class="style17"><%=s1%> rank </span></strong></div></td>
						          <td bgcolor="#FFFFFF"><div align="center" class="style7 style4"><span class="style17" style="color:#000000;"><%= rank%></span></div></td>
								</tr>
								
								<tr>
										<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7 style4"><strong><span class="style17" style="color:#f69722"><%=s1%> <span class="style6">Rate </span></span></strong></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style7 style4"><span class="style17" style="color:#000000;">  
										<% 
		  
	    if(k==3)
	    {
	    	%>
	    	<input required name="image" type="image" src="Gallery/1.png" width="30" height="30" >
	    	<%
	    }
	    if(k>3 && k<=6)
	    {
	    	%>
	    	<input required  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
	    	<%
	    }
	    if(k>6 && k<=9)
	    {
	    	%>
	    	<input required name="image" type="image" src="Gallery/3.png" width="100" height="30" >
	    	<%
	    }
	    if(k>9 && k<=12)
	    {
	    	%>
	    	<input required name="image" type="image" src="Gallery/4.png" width="120" height="30" >
	    	<%
	    }
	    if(k>12 && k<=15)
	    {
	    	%>
	    	<input required name="image" type="image" src="Gallery/5.png" width="140" height="30" >
	    	<%
	    }
	    if(k>15 && k<=30)
	    {
	    	%>
	    	<input required  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
	    	<%
	    }
	    %></span></div></td>
								</tr>
							
						<%
						}
						
				
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
         
	   <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("alladv")){%>
            <h2 align="right"><a href="A_AllUserAdvertise.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("recadv")){%>
            <h2 align="right"><a href="A_AllUserRecomend.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("expire")){%>
            <h2 align="right"><a href="A_ExpiredAdvertises.jsp" class="style4">Back</a></h2>
			<%}
			

			%>
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
