<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
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
String four=request.getParameter("UN");
String five=request.getParameter("Pass");

try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(connectionURL, "root",null);
st=conn.createStatement();

int i=st.executeUpdate("INSERT INTO `user`(`Name`, `Surname`, `DoB`, `Username`, `Password`) VALUES ('"+one+"','"+two+"','"+three+"','"+four+"','"+five+"')");
out.println("Data is successfully inserted!");
rs = st.executeQuery("SELECT * FROM user WHERE Name='"+one+"'");
rs.next();
int meme =rs.getInt("UID");
session.setAttribute("user", four);
session.setAttribute("password", five);
session.setAttribute("dame", one);
session.setAttribute("surname", two);
session.setAttribute("date", three);
session.setAttribute("uid", meme);
request.getRequestDispatcher("HopePage.jsp").forward(request,response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</body>
</html>