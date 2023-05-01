
	  <%@ page import="java.io.*" %>
            <%@ page import="java.util.*" %>
            <%@ page import="com.oreilly.servlet.*" %>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>

 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import="org.json.simple.JSONObject"%>
 <%@page contentType="text/html; charset=UTF-8"%>
 




<%
	
      	String aname=request.getParameter("aname");

      	String att=request.getParameter("keyword");
		
		String user="Android User";
		
		String uurl=String.valueOf(request.getRequestURL());


        JSONObject obj=new JSONObject();

        ArrayList al = new ArrayList();

		
	String   s1=null,s3=null,s4=null,s5,s6,cid=null,s77,s71;
	String per=null;
	int s7=0,s2=0;
	String s22,s27,s28,s72,s73;

      	try 
	{
           	 
			 
			 	String query="select * from advertisement where advname='"+aname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								
								s1=rs.getString(6);
								
							s4=s1+" "+att;
							
							String query1="update advertisement set descr='"+s4+"' where advname='"+aname+"' "; 
						   	Statement st1=connection.createStatement();
							st1.executeUpdate(query1);
							
							 
			 SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
			   
		   	   
          PreparedStatement ps=connection.prepareStatement("insert into Hidden_Attack(adsname,att_data,from_user,dt,urld) values(?,?,?,?,?)");
						ps.setString(1,aname);
						ps.setString(2,att);
						ps.setString(3,user);	
						ps.setString(4,dt);
					    ps.setString(5,uurl);

						ps.executeUpdate();
	
		 
			s4="Attack Success";
			al.add(s4);
            obj.put("ConDetails",al);
   	  		out.print(obj);
							

							}
			 
			 
			
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


