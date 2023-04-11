<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
 <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@page import="org.json.simple.JSONObject"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%

      

	JSONObject obj=new JSONObject();


	

      	
	String  s1,s2, s3,s4,s5,s6,s8=null,s9=null,s10=null,cid=null;
	
	int s7=0;

      	try 
	{




		ArrayList al = new ArrayList();


           String query="select * FROM advrequest"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		  s1=rs.getString(2); // Ad Uname
		    s2=rs.getString(3); // from
		    s3=rs.getString(4);  //to
 		    s4=rs.getString(5);  // status
			 s5=rs.getString(6); //Price

			
		  s6="Ads User Name="+s1+" ,"+"From Date="+s2+" , "+"To Date="+s3+", "+"Status="+s4+","+"Total Ads Price="+s5;
         	 al.add(s6);
	   }
	
	  obj.put("Details",al);
		
   	  out.print(obj);

    	
		}

         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


