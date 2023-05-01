<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User All Friends Recommended Advertisements</title>
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
.style3 {color: #000000}
.style4 {color: #FF00FF}
-->
</style>
</head>
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
         <h2><span class="style4">User Friends Recommended Advertisements</span></h2>
		<p><table width="500" border="1" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#00FFFF"><td width="127" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style4 style14 style7 style3" style="	margin-left:20px;"><h3>Advertisement Image</h3></div></td>
			<td width="100" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style4 style14 style7 style3" style="margin-left:20px;"><h3>Advertisement Name</h3></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style4 style14 style7 style3" style="margin-left:20px;"><h3>Recommended Friend Name</h3></div></td>
			<td width="127" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style4 style14 style7 style3" style="margin-left:20px;"><h3>Recommended Date</h3></div></td>
			</tr>
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
					String user=(String )application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0,count=0,l=0,rank=0;
						try 
						{
							String sql="select id,advname,rank,username from advertisement";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								l=rs.getInt(3);
								s4=rs.getString(4);
								
				String query10="select * from advrequest where uname='"+s4+"' "; 
				Statement st10=connection.createStatement();
		 		ResultSet rs10=st10.executeQuery(query10);
				if ( rs10.next() )
				{	
					String strdate=rs10.getString(3);
					String Expdate=rs10.getString(4);
						
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

			Date date1 = new SimpleDateFormat("dd/MM/yyyy").parse(Expdate);
			Date date3 = new SimpleDateFormat("dd/MM/yyyy").parse(strdate);
			Date now1 = new Date();
			SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
			String strCurrDate = sdf1.format(now1);
			Date date2 = new SimpleDateFormat("dd/MM/yyyy").parse(strCurrDate);

			if (date1.compareTo(date2) < 0 || date2.compareTo(date3) < 0 ){}else{
								
								rank=l+1;
							
						   	String query="select * from recommendtofriend where aname='"+s1+"' and aid='"+i+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								int j=rs1.getInt(1);
								String aname=rs1.getString(4);
								String r_user=rs1.getString(2);
							    String t_user=rs1.getString(3);
								int aid=rs1.getInt(5);
								String date=rs1.getString(6);
								
								String sql1="select * from req_res where ((requestfrom='"+user+"'&&requestto='"+r_user+"')||(requestfrom='"+r_user+"'&&requestto='"+user+"'))&& status='Accepted'";
								Statement st2=connection.createStatement();
								ResultSet rs2=st2.executeQuery(sql1);
					   			if( rs2.next() )
								{
								int k=rs2.getInt(1);
								String rf=rs2.getString(2);
								String rt=rs2.getString(3);
								if(t_user.equalsIgnoreCase(user)){
								count++;
						
					%>
			
		<tr>
			<td width="50">
			<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="image"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
			  <td  width="182" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><a href="U_AdvertisementDetail.jsp?aname=<%=aname%>&id=<%=i%>&rank=<%=rank%>&type=<%="frdrecm"%>" class="style87 style65"><%=aname%></a></div></td>
			    <td  width="182" valign="middle" height="44" style="color:#000000;">
			<div align="left" class="style6 style10" style="margin-left:20px;"><a href="U_FriendProfile.jsp?type1=<%=r_user%>&type=<%="user3"%>"><%out.println(r_user);%></a></div></td>
			  <td  width="182" align="left" valign="middle" height="23"><h3 class="style3"><%=date%></h3>		  </td>
</tr>
<%					
					}}}}
						}}
						
						if(count==0){
										out.print("No One Recommended you");
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
			<p align="right"><a href="U_Main.jsp" class="style2">Back</a></p>
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
