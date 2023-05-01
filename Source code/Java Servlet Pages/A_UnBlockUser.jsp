<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
<html><title> user status changing</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
		String str="Normal";
		String uname=request.getParameter("user");
   		try {
				
       		String query="select * from request where uname='"+uname+"' "; 
		    Statement st=connection.createStatement();
		    ResultSet rs=st.executeQuery(query);
			if ( rs.next() )
			   {
				Statement st1 = connection.createStatement();
       			String query1 ="Delete from evidence where uname='"+uname+"' ";
	   			st1.executeUpdate (query1);
				
				Statement st2 = connection.createStatement();
       			String query2 ="Delete from request where uname='"+uname+"' ";
	   			st2.executeUpdate (query2);
				
				String sql6="Update user set acctype='"+str+"' where username='"+uname+"' ";
				Statement stmt6 = connection.createStatement();
				stmt6.executeUpdate(sql6);
				
			   response.sendRedirect("A_UnBlockReq.jsp");  
		   
		   }
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}	
		
	%>
</body>
</html>

