<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Advertisement Details Page</title>
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
.style3 {font-size: 18px}
.style4 {color: #FF00FF}
.style7 {color: #000000; font-style: italic; font-size: 18px; }
.style8 {color: #FF0000}
.style9 {color: #990000}
.style10 {font-size: 12px}
.style11 {font-size: 14px}
.style12 {font-size: 16px}
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
	  <h2 align="center"><span class="style9">Advertisement <%=request.getParameter("aname")%> Details</span></h2>
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
					   String rank1=request.getParameter("rank");
						String s1,s2="",s3,s4,s5,s6,s7;
						int i=0,j=0;
						int id=Integer.parseInt(request.getParameter("id"));
						try 
						{
							String name=request.getParameter("aname");
							
							
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
								 
							String query32 ="update advertisement set rank="+rank1+" where id='"+id+"'";
							st32.executeUpdate (query32);
								
					%>
					
					<table border="1" align="center" cellpadding="0" cellspacing="0" >
				 				<tr >
								    <td width="160" rowspan="11" bgcolor="#FFFFFF" ><div class="style22 style5 style7" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                        <input  name="image" type="image" src="images.jsp?value=<%="image"%>&id=<%=i%>" style="width:120px; height:120px;"  />
								                                  </a> </div>
								  </div></td>
		  						<tr/>
									<td width="187" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style10 style7"><strong><span class="style17" style="color:#f69722">Advertised User Name</span> </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style7"><span class="style17" style="color:#000000;"><a href="U_FriendProfile.jsp?type1=<%=s7%>&type=<%="user4"%>">	<%=s7%> </a></span></div></td>
				    
				    
				    			<tr>
								<tr/>
									<td width="187" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style10 style7"><strong><span class="style17" style="color:#f69722">Advertisement Category</span> </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style7"><span class="style17" style="color:#000000;"><%= s1%></span></div></td>
				    
				    
				    			<tr>
									<td width="187" height="27" bgcolor="#FFFFFF">
						  		  <div align="center" class="style10 style7"><strong><span class="style17" style="color:#f69722">Advertisement Name</span> </strong></div></td>
							      <td bgcolor="#FFFFFF"><div align="center" class="style7"><span class="style17" style="color:#000000;"><%= s2%></span></div></td>
								</tr>
								<tr>
									<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong><span class="style17" style="color:#f69722"><%=s1%> Description </span> </strong></div></td>
							      <td bgcolor="#FFFFFF"><div align="center" class="style7"><span class="style17" style="color:#000000;"><%= s5%></span></div></td>
				    			</tr>
								<tr>
										<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong><span class="style17" style="color:#f69722"><%=s1%> Company</span></strong></div></td>
						          <td bgcolor="#FFFFFF"><div align="center" class="style7"><span class="style17" style="color:#000000;"><%= s3%></span></div></td>
								</tr>
								<tr>
								<tr>
										<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong><span class="style17" style="color:#f69722">Company Estimation Year </span></strong></div></td>
						          <td bgcolor="#FFFFFF"><div align="center" class="style7"><span class="style17" style="color:#000000;"><%= s4%></span></div></td>
								</tr>
								
								<tr>
										<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong><span class="style17" style="color:#f69722"><%=s1%> Rank </span></strong></div></td>
						          <td bgcolor="#FFFFFF"><div align="center" class="style7"><span class="style17" style="color:#000000;"><%= rank1%></span></div></td>
								</tr>
								
								<tr>
										<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong><span class="style17" style="color:#f69722"><%=s1%> Rate </span></strong></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style7"><span class="style17" style="color:#000000;">  
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
		<div align="right" class="style10 style7 style3">
				<a href="U_RateAdv.jsp?name=<%=s2%>&id=<%=i%>&type=<%=type%>&rank=<%=rank1%>" class="style11 style8"><strong>GIVE RATING</strong></a></div>	
				
				<h3 class="style4" align="center">Recommended Details</h3>
				 <table width="400" border="1" align="center"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
		  <td  width="110" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style12"><strong> Recommend From </strong></div></td>
          <td  width="110" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style12"><strong> Recommend To </strong></div></td>
          <td  width="146" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style12"><strong>Recommended Date </strong></div></td>
        </tr>
            <%
					  String s10="",s11="",s12="",s13="",s14="",s15="",s16="",s17="";
					  int k2=0,count=0;
					
						try 
						{
							
						   	String query2="select * from recommendtofriend where aid="+id+" "; 
						   	Statement st2=connection.createStatement();
						   	ResultSet rs2=st2.executeQuery(query2);
					   		while ( rs2.next() )
					   		{
								s11=rs2.getString(2);
								s12=rs2.getString(3);
								s13=rs2.getString(4);
								k2=rs2.getInt(5);
								s15=rs2.getString(6);
								
								count++;
					%>
            <tr>
			   <td  valign="middle" height="0">
                  <div align="center" class="style23 style2 style12">
   			  <%=s11%>                </div></td>
              <td  valign="middle" height="0">
                  <div align="center" class="style23 style2 style12">
              <%=s12%>              </div></td>
               <td  valign="middle" height="0">
                  <div align="center" class="style23 style2 style12">
              <%=s15%>              </div></td>
	  </tr>
			  
			  <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
				%></table>
          <%	
					if(count==0){out.print("No one Users Have Recommended");}%>
         </h2>
              <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("frdadv")){%>
            <h2 align="right"><a href="U_FriendsAdvertisements.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("frdrecm")){%>
            <h2 align="right"><a href="U_FrdsRecommended.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("ministate")){%>
            <h2 align="right"><a href="U_MiniStatement.jsp" class="style4">Back</a></h2>
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
