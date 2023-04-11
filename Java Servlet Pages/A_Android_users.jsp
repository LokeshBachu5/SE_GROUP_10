<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Android_users</title>
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
.style3 {color: #FF00FF}
.style5 {color: #FF00FF; font-weight: bold; }
.style6 {color: #FFFFFF}
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
           <h2><span class="style5">View Android Users...</span></h2>
           <table width="548" align="center"  cellpadding="0" cellspacing="0">
            <tr>
            
            
              <td width="227" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>Email</strong></div></td>
			    <td width="194" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>User Name</strong></div></td>
         
              <td width="125" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>Password</strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
			
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from login"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								
								
					%>
            <tr bgcolor="#CCCCCC">
              <td height="70" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style6 style6"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
             
              <td  align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style6 style6"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
              <td  align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style6 style6"><strong>
                  <%out.println("**********");%>
              </strong></div></td>
              
              
            <%
						}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
      </table>
	  <p align="right"><a href="A_Main.jsp">Back</a></p>

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
