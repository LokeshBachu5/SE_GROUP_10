<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
<title> User Information adding page</title>

<%
	try{
		String requestto = request.getParameter("username");
	//	int id=Integer.parseInt(request.getParameter("id"));
		String requestfrom = (String)application.getAttribute("uname");  
	
 		String sql3="select * from req_res where (requestfrom='"+requestto+"' && requestto='"+requestfrom+"')||(requestfrom='"+requestfrom+"' && requestto='"+requestto+"')";
       	Statement stmt3 = connection.createStatement();
	   	ResultSet rs2=stmt3.executeQuery(sql3);
		if(rs2.next()){
				response.sendRedirect("U_SearchFrd.jsp" );
		}
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						String status = "waiting";
						
	   	String sql="insert into req_res(requestfrom,requestto,status,dt) values ('"+requestfrom+"','"+requestto+"','"+status+"','"+dt+"')";
       	Statement stmt = connection.createStatement();
	   	int n =stmt.executeUpdate(sql);
		out.println(n);
	   	if(n>0)
	   	{
			
			response.sendRedirect("U_SearchFrd.jsp" );
	    	
			String str1="Request Sent Thank you";
			application.setAttribute("msg1",str1);

		
     	}
	    else
	    {	
			request.setAttribute("msg","Failure in Recommendation");
				response.sendRedirect("U_SearchFrd.jsp" );
			
      	}
		connection.close();
	}catch(Exception e)
	{
		out.print(e);
	}
%>


			
			
			
			
			
			
			
			
			
			
			
			
			
		