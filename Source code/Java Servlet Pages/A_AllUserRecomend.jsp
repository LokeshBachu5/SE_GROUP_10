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
        <h2><span class="style3">View All Users Recommends Details...</span></h2>
	  
          <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
          <td  width="68" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong>SI NO</strong></div></td>
		   <td  width="110" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong> Advertisement Image </strong></div></td>
		   <td  width="110" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong> Advertisement Name </strong></div></td>
		  <td  width="110" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong> Recommend From </strong></div></td>
          <td  width="110" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong> Recommend To </strong></div></td>
          <td  width="146" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong>Recommended Date </strong></div></td>
		  
        </tr>
            <%@ include file="connect.jsp" %>
            <%
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="";
					  int i=1,j=0,count=0,k=0;
					
						try 
						{
							
						   	String query="select * from recommendtofriend "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(5);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								k=rs.getInt(5);
								s5=rs.getString(6);
								
								count++;
					%>
            <tr>
              <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
                    <div align="center" class="style23">
                    <%out.println(i);%>
                </div>
              </div></td>
			  <td width="229" valign="middle"><div class="style2" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="image"%>&id=<%=j%>" style="width:50px; height:50px;" />
              </div></td>
			  <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
             			  <a href="A_AdvertisementDetail.jsp?aname=<%=s3%>&id=<%=k%>&type=<%="recadv"%>"><%=s3%></a>
                </div></td>
			   <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
             			 <a href="A_UserProfile.jsp?type1=<%=s1%>&type=<%="user4"%>"> <%=s1%> </a>
                </div></td>
              <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
                        <a href="A_UserProfile.jsp?type1=<%=s2%>&type=<%="user4"%>"> <%=s2%> </a>
              </div></td>
               <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
                         <%=s5%>
              </div></td>
				
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
					if(count==0){out.print("None Users Have Recommended");}%>
      <p align="right"><a href="A_Main.jsp">Back</a></p>
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
