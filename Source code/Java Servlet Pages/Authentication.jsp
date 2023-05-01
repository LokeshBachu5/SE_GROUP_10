
<title>Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date,java.util.Calendar" %>
<%@ page import="java.sql.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<style type="text/css">
<!--
.style2 {font-size: 18px}
.style3 {
	font-size: 18px;
	font-weight: bold;
	color: #FF0000;
}
.style4 {font-size: 18px; font-weight: bold; }
.style6 {color: #FF0000}
.style7 {color: #006600}
-->
</style>
<%
   
   
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			
						 Date now = new Date();
			
						 String strDate = sdfDate.format(now);
						 String strTime = sdfTime.format(now);
						 String date = strDate + "   " + strTime;  
   
   
    try
	{
	
			String value=request.getParameter("value"); 
			
			if(value.equalsIgnoreCase("userlogin"))
			{
					String username=request.getParameter("username"); 
         			String password=request.getParameter("password");
					String sql = "SELECT * FROM user where username='"+username+"' and password='"+password+"'";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								String sql1="SELECT * FROM user where username='"+username+"' and status='Authorized' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									int i = rs1.getInt(1);
									
									String sql2="SELECT * FROM evidence where uname='"+username+"' and status='block' ";
									Statement stmt2 = connection.createStatement();
									ResultSet rs2 =stmt2.executeQuery(sql2);
									if(rs2.next()==true)
									{%>
<h3 align="center"><span class="style6">You Have Blocked!!!</span> <span class="style7"></br>
Send UnBlock Request</span> <a href="U_UnBlockReq.jsp?name=<%=username%>">Request</a></h3>
<%}
									else{
									application.setAttribute("uname", username);
									
									
									
									response.sendRedirect("U_Main.jsp");
									}
								}
								else
								{
										%>
								
									
									<br/>
									<p align="center" class="style3">You are not Authorized by the Admin, Please wait!! </p>
									<p align="center" class="style3"><br/>
								      <a href="U_Login.jsp" class="style4">Back</a></p>
									<p>
									  <%
								 }
					
					}
					else
					{
						response.sendRedirect("U_Wrong_Login.jsp");
					}
			
			
			}
			else if(value.equalsIgnoreCase("adminlogin"))
			{
					String username=request.getParameter("adminid"); 
         			String password=request.getParameter("pass");
					String sql = "SELECT * FROM admin where username='"+username+"' and password='"+password+"' ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
									application.setAttribute("admin", username);
									response.sendRedirect("A_Main.jsp");
					
					}
					else
					{
						response.sendRedirect("A_Wrong_Login.jsp");
					}
			
			
			}
			
			
			else if(value.equalsIgnoreCase("userstatus"))
			{
					
					int id=Integer.parseInt(request.getParameter("id"));

					String sql1="update user set status='Authorized' where id='"+id+"'";
					Statement stmt1 = connection.createStatement();
					int k =stmt1.executeUpdate(sql1);
					if(k>0)
					{
					
						
						response.sendRedirect("A_AuthorizeUsers.jsp");
					}
					else
					{
							%>
						  
						</p>
						<p align="center" class="style3">Permision Not Granted..Please Try Again..<br/>
						  <br/>
						</p>
						<p align="center" class="style3"><a href="A_AuthorizeUsers.jsp" class="style2">Back</a>
						</p>
						<%
					 }
					
			
			}
			
			else
			{}
						
						
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
								    </p>
									