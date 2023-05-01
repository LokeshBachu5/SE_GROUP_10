<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ page import="java.util.Date,java.util.Calendar" %>

<html><title> user status changing</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
		
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			
						 Date now = new Date();
			
						 String strDate = sdfDate.format(now);
						 String strTime = sdfTime.format(now);
						 String date = strDate + "   " + strTime; 
	
	
		String uname=request.getParameter("user");
		String type=request.getParameter("type");
   		try {
	   		String str = "block";
				
       		Statement st1 = connection.createStatement();
       		String query1 ="update evidence set status='"+str+"',blockdate='"+date+"' where uname='"+uname+"' ";
	   		st1.executeUpdate (query1);
			
							String sql="select * from evidence where uname='"+uname+"' ";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
								String s1=rs.getString(1);
								String s2=rs.getString(2);
								String s3=rs.getString(3);
								String s4=rs.getString(4);
								
								
				PreparedStatement ps=connection.prepareStatement("insert into  malacious(mtype,uname,ip,dt) values (?,?,?,?)"); 
						ps.setString(1,s1);
						ps.setString(2,s2);	
						ps.setString(3,s3);
						ps.setString(4,s4);
						
						ps.executeUpdate();
					}			
								
			String user=(String)application.getAttribute("uname");
			if(user.equalsIgnoreCase(uname)){
			application.removeAttribute("uname");
		   }
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}	
		if(type.equalsIgnoreCase("amount")){	
		response.sendRedirect("A_MalaciousAmtUser.jsp");  
	}
	else{
	   response.sendRedirect("A_MalaciousFileUser.jsp"); 
	}
	
	%>
</body>
</html>

