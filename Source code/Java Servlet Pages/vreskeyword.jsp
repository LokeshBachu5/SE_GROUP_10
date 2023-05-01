
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

<%

      

	JSONObject obj=new JSONObject();


	

      	
	String  s77=null,s2=null, s3=null,s4=null,s8=null,s9=null,s10=null,cid=null,s7=null;
	String s1=null;
	String s5=null,s6=null;

      	try 
	{




		ArrayList al = new ArrayList();


         String query="select * FROM advertisement"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		
		s1=rs.getString(2); //adcat
		s2=rs.getString(3); //ad name
		s3=rs.getString(5); // year 
		s4=rs.getString(8); // dt
		s5=String.valueOf(rs.getInt(10)); //rank
		s6=String.valueOf(rs.getInt(11)); // Price
		s7=rs.getString(12); // Ad User
		
		

                s3="Ad Category="+s1+" ,"+"Ads Name="+s2+" ,"+"Started Year="+s3+" ,"+"Ads Date="+s4+" ,"+"Ads Rank="+s5+" ,"+"Product Price="+s6+" ,"+"Ads User="+s7;
         	al.add(s3);
	   }
	
	  obj.put("ResDetails",al);
		
   	  out.print(obj);

    	
		}

         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>






