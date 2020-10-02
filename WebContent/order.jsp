<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>

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
<script>
function myFunction() {
    var myWindow = window.open("1.jpg", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=400,height=400");
}
</script>
<body>
 <%try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(connectionURL, "root",null);
st=conn.createStatement();

int i=0;
int b=0;

while(i<30)
{   int ka=(int)session.getAttribute("uid");
	String j=((String[][])session.getAttribute("Cart"))[i][0];
	String k=((String[][])session.getAttribute("Cart"))[i][1];
	
	if(j!=null){
		rs = st.executeQuery("SELECT * FROM products WHERE Name='"+j+"'");
		rs.next();
		String lame = rs.getString("ProdID");
		String same = rs.getString("Name");
		out.println("Data is successfully inserted!");
		
		System.out.println("lopa: " + j);
		int mo=st.executeUpdate("INSERT INTO `orders`(`Time`, `UserID`, `ProdID`, `ProdName`) VALUES (NOW(),'"+ka+"','"+lame+"','"+same+"')");
		out.println("Data is successfully inserted!");
		 //File creation
		 String strPath = "C:/Users/mikeg/eclipse-workspace/cheap_bits/WebContent/order_data/orders_data.txt";
		 //File strFile = new File(strPath);
		 //boolean fileCreated = strFile.createNewFile();
		 //File appending
		FileWriter fr = new FileWriter(strPath, true);
		BufferedWriter br = new BufferedWriter(fr);
		PrintWriter pr = new PrintWriter(br);
		pr.print("Client: ");
		pr.print(ka);
		pr.print(" ProductID: ");
		pr.println(lame);
		pr.close();
		br.close();
		fr.close();
		
	}

	  i=i+1;
    }
session.setAttribute("Cart", null);
session.setAttribute("Total", null);
session.setAttribute("check", null);
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