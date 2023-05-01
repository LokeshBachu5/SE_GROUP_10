<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User All My Advertisements</title>
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
        <h2><span class="style3"><span class="style3">View</span> All my Advertisement Details...</span></h2>
	  
          <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
          <td  width="68" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong>SI NO</strong></div></td>
		  <td  width="110" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong> Advertisement Category </strong></div></td>
          <td  width="110" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong> Advertisement Name </strong></div></td>
          <td  width="146" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong>Company Name </strong></div></td>
		   <td  width="145" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong>Advertisement Image</strong></div></td>
			<td  width="145" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong> Advertisement Scores </strong></div></td>
		   <td  width="145" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong>Advertisement Rates</strong></div></td>
		   <td  width="145" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style22 style7 style8 style6 style15 style3"><strong>Advertisement Delete</strong></div></td>
        </tr>
            <%@ include file="connect.jsp" %>
            <%
					  String uname=(String)application.getAttribute("uname");
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="";
					  int i=1,j=0,count=0,rank=0,rank1=0,j1=0,k=0;
					
						try 
						{
							
						   	String query="select * from advertisement where username='"+uname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								rank=rs.getInt(10);
								k=rs.getInt(11);
								
								count++;
							
					%>
            <tr>
              <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
                    <div align="center" class="style23">
                    <%out.println(i);%>
                </div>
              </div></td>
			  <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
              				<%=s1%>
                </div></td>
              <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
                    		<a href="U_MyAdvertisements1.jsp?aname=<%=s2%>&id=<%=j%>&type=<%="myadv"%>"><%=s2%></a>
              </div></td>
              <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
             			  <%=s3%>
                </div></td>
				<td width="229" valign="middle"><div class="style2" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="image"%>&id=<%=j%>" style="width:50px; height:50px;" />
              </div></td>
			   	 <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
                    <%out.println(rank);%>
              </div></td>
				  <td>
		           <span class="style2">
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
	    %>              
   	          </span></td>
			  
			  <td  valign="middle" height="0">
                  <div align="center" class="style23 style2">
                    		<a href="U_DeleteAdv.jsp?aname=<%=s2%>&id=<%=j%>">Delete</a>
              </div></td>
            </tr>
            <%
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
				%></table>
          <%	
					if(count==0){out.print("You Have Not Added Any Details");}%>
					
					
					
      <p align="right"><a href="U_Main.jsp">Back</a></p>
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
