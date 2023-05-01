<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
<html><title> user status changing</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
  		int id =Integer.parseInt(request.getParameter("id"));
		String uname = (String)application.getAttribute("uname"); 
		String advname = request.getParameter("aname");
   		try {
				
       		PreparedStatement ps2=connection.prepareStatement("delete  from advertisement where username='"+uname+"' and advname='"+advname+"'  ");
						
										ps2.executeUpdate();
										
			PreparedStatement ps3=connection.prepareStatement("delete  from recommendtofriend where aid='"+id+"' and aname='"+advname+"' ");
						
										ps3.executeUpdate();
	   		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}	response.sendRedirect("U_MyAdvertisements.jsp");  
	%>
</body>
</html>

