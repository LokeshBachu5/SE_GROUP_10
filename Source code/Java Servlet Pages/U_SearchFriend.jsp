<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Friend Page</title>
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
          <h2> <span class="style3">Searched Friends Results: </span></h2>
            
          <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"  >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%

						String s1,s2,s3,s4;
						int i=0,count=0;
						String keyword=request.getParameter("keyword");
						String user=(String)application.getAttribute("uname");
       
						try 
						{
							String status1=null;
						   	String status=null;
						   	String query="select * from user where username LIKE '%"+keyword+"%'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while(rs.next()==true)
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								
								status ="request";
								if(s1.equalsIgnoreCase(user)){}
								else
								{
									count++;
									String query7="select * from req_res where (requestfrom='"+user+"'||requestto='"+user+"')" ; 
									Statement st7=connection.createStatement();
									ResultSet rs7=st7.executeQuery(query7);
									while(rs7.next())
									{
										String rfrom =rs7.getString(2);
										String rto =rs7.getString(3);
										status1 = rs7.getString(4);
										
										if((!status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
										{
											status="sent";
										}
										else if((status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
										{
											status="Already Friend";
										}
										
									}	
								
					%>
          
			<tr>
					<td width="129" rowspan="3" valign="middle" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="user"%>" style="width:100px; height:100px;"  />
			  </a></div>					</td>
		  </tr>
             
             <tr> <td width="105" valign="middle" height="80" style="color:#000000;"><div align="center"><strong>Name</strong></div></td>
			 <td width="90" valign="middle" height="80" style="color:#000000;"><div align="center"><span class="style7">&nbsp;&nbsp;
              <%out.println(s1);%>
			 </span></div></td>
             </tr>
				   <tr>
				    <td width="105" valign="middle" height="26" style="color:#000000;"><div align="center" class="style7"><strong>Status</strong></div></td>
              <%
						if(status.equals("Already Friend")){
						%>
              <td  width="90" valign="middle" height="26" style="color:#000000;"align="center"><span class="style7"><%=status %>&nbsp;</span></td>
              <%
						}else if(status.equals("sent")){
						%>
              <td  width="57" valign="middle" height="26" style="color:#000000;"align="center"><span class="style7"><%=status %>&nbsp;</span></td>
              <%
						}else{
						
						%>
              <td  width="107" valign="middle" height="26" style="color:#000000;"align="center"><a href="U_UpdateStatus.jsp?username=<%=s1%>&id=<%=i%>" class="style8"><%=status %>&nbsp;</a></td>
              <%}
						%>
            </tr>
            <%
					
						}
					
				
 	    					
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
				
						
												}
					
					if(count==0){
					out.print("There is no Friends with keyword "+keyword);
					}
					
					connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
            
            <p align="right">&nbsp;</p>
			<p align="right"><a href="U_FrdSearchReq.jsp" class="style2">Back</a></p>
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
