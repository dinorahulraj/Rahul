<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="connect.jsp"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String okey = (String)application.getAttribute("okey");	
	String uname = (String)application.getAttribute("oname");
	String rby = request.getParameter("reqby");
	String fname = request.getParameter("fname");
	try{
		String query = "SELECT * FROM webserver WHERE fname='"+fname+"' AND uname='"+uname+"'";
		ResultSet res = conn.createStatement().executeQuery(query);
		if(res.next()){			
			String skey = res.getString(4);		
			out.println("try");
			out.println(skey+" "+okey);
			try{
				String approveQ1 = "UPDATE requests SET stat='"+skey+"' WHERE reqby='"+rby+"' and fname='"+fname+"'";
				String approveQ2 = "UPDATE requests SET okey='"+okey+"' WHERE reqby='"+rby+"' and fname='"+fname+"'";
				conn.createStatement().executeUpdate(approveQ1);
				conn.createStatement().executeUpdate(approveQ2);
				response.sendRedirect("orequests.jsp");
			}catch(Exception e){
				
			}
		}
	}catch(Exception e){
		
	}
%>
</body>
</html>