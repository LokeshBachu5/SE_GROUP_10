<title> user Requesting For Unblock Account</title>
<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
<html><title> user status changing</title>
<style type="text/css">
<!--
.style1 {color: #0000FF}
-->
</style>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
  		String uname=request.getParameter("name");
   		try {
	   		String str = "requested";
			
			String sql1="SELECT * FROM request where uname='"+uname+"' ";
			Statement stmt1 = connection.createStatement();
			ResultSet rs1 =stmt1.executeQuery(sql1);
			if(rs1.next()==true)
			{
			
				%><h3 class="style1" align="center">You Have Already Sent Request Wait For Admin Response</h3>
				<table align="center"><tr><td><a href="U_Login.jsp">Back</a></td><td><a href="index.html">Home</a></td></tr></table>
				<%
			
				}else{	
       		 PreparedStatement ps=connection.prepareStatement("insert into  request(uname,status) values (?,?)"); 
				
						ps.setString(1,uname);
						ps.setString(2,str);
						
						ps.executeUpdate();	
			
			response.sendRedirect("U_Login.jsp"); 
       	}
		}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}	 
	%>
</body>
</html>

