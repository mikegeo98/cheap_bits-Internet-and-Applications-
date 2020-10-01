<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String connectionURL = "jdbc:mysql://localhost:3306/cheap_bits";
	Connection conn = null;
	Statement st = null;	
	ResultSet rs = null;
%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
String one=request.getParameter("Onoma");
String two=request.getParameter("Eponumo");
String three=request.getParameter("Gen");

try
{

conn = DriverManager.getConnection(connectionURL, "root",null);
st=conn.createStatement();
int i=st.executeUpdate("UPDATE `user` SET `Name`='"+one+"',`Surname`='"+two+"',`DoB`='"+three+"' WHERE Username='" + session.getAttribute("user") + "'  ");
out.println("Data is successfully inserted!");
request.getSession().setAttribute("dame", one);
request.getSession().setAttribute("surname", two);
request.getSession().setAttribute("date", three);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<jsp:forward page="HopePage.jsp"/>
</body>
</html>