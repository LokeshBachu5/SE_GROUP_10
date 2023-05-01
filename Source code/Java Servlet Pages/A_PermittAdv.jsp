<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Give permission to Advertisement</title>
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
.style4 {color: #FF0000}
-->
</style>
</head>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="ISO-8859-1"%>
	  <%@ page import="java.io.*" %>
            <%@ page import="java.util.*" %>
            <%@ page import="com.oreilly.servlet.*" %>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
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
     	<% 
		String uname=request.getParameter("uname");
		   int cost=Integer.parseInt(request.getParameter("cost"));
		try{
			String str="permitted";
 			   String blockdate="";
		   
		  SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt1 = strDate + "   " + strTime;
		   
				
				String query2="select amount from account where user='"+uname+"' "; 
				Statement st2=connection.createStatement();
				ResultSet rs2=st2.executeQuery(query2);
					if ( rs2.next() )
					   {
					 int uamount=Integer.parseInt(rs2.getString(1));	
							
							if(cost>uamount){ 
							String ip1 = request.getRemoteAddr();
							
							String type="amount";
							String state1="unblock";
						
						
				String query3="select * from evidence where uname='"+uname+"' and type='"+type+"' "; 
				Statement st3=connection.createStatement();
				ResultSet rs3=st3.executeQuery(query3);
					if ( rs3.next() )
					{%>
                  <h3 class="style5 style4"><%=uname%> is Malacious User By Advertising With unSufficient Balance!!!</h3>
				  <p align="right"><a href="A_UserAdvReq.jsp">Back</a></p>
                    <%}
					else{	
					
					String acctype="Malacious";
					
					String sql5="Update user set acctype='"+acctype+"' where username='"+uname+"' ";
					Statement stmt5 = connection.createStatement();
					stmt5.executeUpdate(sql5);
					
						
			Statement st30 = connection.createStatement();
			String query30 ="insert into evidence values('"+type+"','"+uname+"','"+ip1+"','"+dt1+"','"+state1+"','"+blockdate+"')";
			st30.executeUpdate (query30);
			
			PreparedStatement ps1=connection.prepareStatement("delete from advrequest where uname='"+uname+"' ");
						
										ps1.executeUpdate();
			
			%>
                  <h3 class="style5 style4"><%=uname%> Have Become Malacious User By Advertising With unSufficient Balance!!!</h3>
				  <p align="right"><a href="A_UserAdvReq.jsp">Back</a></p>
                    <%
			}
		}	
		   else{
		   
		   String query="select * FROM advrequest where uname='"+uname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	  		 if ( rs.next() )
	  		  {
			  		String frmdate=rs.getString(3);
					String todate=rs.getString(4);
			      	int sub=uamount-cost;
												String leftamount=String.valueOf(sub);
												
												String sql2="Update account set amount='"+leftamount+"'  where user='"+uname+"' ";
												Statement stmt2 = connection.createStatement();
												stmt2.executeUpdate(sql2);

			  
			connection.createStatement().executeUpdate("update advrequest set status='"+str+"',cost='"+cost+"' where uname='"+uname+"' ");
					
			PreparedStatement ps=connection.prepareStatement("insert into transaction(uname,fromdate,todate,cost) values(?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,frmdate);
						ps.setString(3,todate);	
						ps.setInt(4,cost);
					
						ps.executeUpdate();
					
					response.sendRedirect("A_UserAdvReq.jsp");
				}
			}
		}else{%><h3 class="style3">Account Not Found</h3>
		 <p align="right"><a href="A_UserAdvReq.jsp">Back</a></p><%
		String str1="First Create Bank Account";
		 application.setAttribute("msg2",str1);
		}
		}catch(Exception e){}
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
