<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin End User Profile Page</title>
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
.style4 {color: #000000}
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
           <h2><span class="style3">User <%=request.getParameter("type1")%>'s profile...</span></h2>
	      <p>&nbsp;</p>
	    <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<%@ include file="connect.jsp" %>
					<%
						String user1=request.getParameter("type1");
						String type=request.getParameter("type");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user1+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								s7=rs.getString(11);
								
					%>
					<tr><td rowspan="9" bgcolor="#FFFFFF" >
						<div style="margin:10px 13px 10px 13px;" >
                		<a class="#" id="img1" href="#" >
							<input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="user"%>" style="width:200px; height:230px;"  />
				   		</a>                	</div>
					</td>
					<tr/>
					<tr>
					  <td  width="150" height="40" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9 style5" style="margin-left:20px;"><strong>Username</strong></div></td>
						<td  width="300" height="40" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style6 style4" style="margin-left:20px;"><strong>
					  <%out.println(s1);%>
					  </strong></div></td>
					</tr>
					<tr>
					  <td  width="120" height="40" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9 style5" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
					  <td  width="72" height="40" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style10 style6 style4" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
					  <td  width="100" height="40" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9 style5" style="margin-left:20px;"><strong>Mobile</strong></div></td>
					  <td  width="82" height="40" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style10 style6 style4" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
					  <td  width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9 style5" style="margin-left:20px;"><strong>Date Of Birth</strong></div></td>
					  <td  width="82" height="40" align="left" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style10 style6 style4" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
					  <td  width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left " class="style9 style5" style="margin-left:20px;"><strong>Gender</strong></div></td>
					  <td  width="82" height="40" align="left" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style10 style6 style4" style="margin-left:20px;"><%out.println(s6);%></div></td>
					</tr>
					<tr>
					  <td   width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9 style5" style="margin-left:20px;"><strong>Address</strong></div></td>
						<td  width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left">
						  <div align="left" class="style10 style6 style4" style="margin-left:20px;">
					  <%out.println(s4);%></div></td>
					</tr>
					<tr>
					  <td   width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9 style5" style="margin-left:20px;"><strong>Account Type</strong></div></td>
						<td  width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left">
						  <div align="left" class="style10 style7 style3" style="margin-left:20px;">
					  <%out.println(s7);%></div></td>
					</tr>
				
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
	    </table>
		
		  <h2 align="right">&nbsp;</h2>
			<% String aname=request.getParameter("aname");
				String id=request.getParameter("id");
			
			if(type.equalsIgnoreCase("user1")){%>
            <h2 align="right"><a href="A_UnBlockReq.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user2")){%>
            <h2 align="right"><a href="A_AllUserAdvertise.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user3")){%>
            <h2 align="right"><a href="A_MalaciousFileUser.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user4")){%>
            <h2 align="right"><a href="A_AllUserRecomend.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user5")){%>
            <h2 align="right"><a href="A_UserAdvReq.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user6")){%>
            <h2 align="right"><a href="A_MalaciousAmtUser.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user7")){%>
            <h2 align="right"><a href="A_BlockedUsers.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("alladv")){%>
            <h2 align="right"><a href="A_AdvertisementDetail.jsp?type=<%=type%>&aname<%=aname%>&id=<%=id%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("recadv")){%>
            <h2 align="right"><a href="A_AdvertisementDetail.jsp?type=<%=type%>&aname<%=aname%>&id=<%=id%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("mal")){%>
            <h2 align="right"><a href="A_BlockEvidense.jsp" class="style4">Back</a></h2>
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
