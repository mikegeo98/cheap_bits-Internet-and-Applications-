<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<%
	String connectionURL = "jdbc:mysql://localhost:3306/cheap_bits";
	Connection conn = null;
	Statement st = null;	
	ResultSet rs = null;
%>
<title>Insert title here</title>
</head>
<body>
<%
    try
    {
    	conn = DriverManager.getConnection(connectionURL, "root",null);
    	st=conn.createStatement();
        rs=st.executeQuery("select * from products;");
%>
 <%
		String[][] vat= {{"Greece", "USA", "China","South Africa", "UK"}, {"23","11","17","15","20"}};
		int xwr=Integer.parseInt(request.getParameter("country"));
		String j=vat[1][xwr];
		System.out.println("ka: " + Integer.parseInt(j));
		int k=(int)session.getAttribute("Total");
		System.out.println("k: " + k);
		int[] A=new int[5];
		if (session.getAttribute("current")==null)
		{
		 k=10000*k;
		 int o=k/12300;
		 k=o;
		 A[0]=(k*(100+Integer.parseInt(vat[1][0]))/100);
		 
		 A[1]=(k*(100+Integer.parseInt(vat[1][1]))/100);
		 
		 A[2]=(k*(100+Integer.parseInt(vat[1][2]))/100);
		 
		 A[3]=(k*(100+Integer.parseInt(vat[1][3]))/100);
		 
		 A[4]=(k*(100+Integer.parseInt(vat[1][4]))/100);
		 session.setAttribute("A", A);
		 session.setAttribute("Total", A[xwr]);
		 session.setAttribute("current", xwr);
	     request.getRequestDispatcher("basket.jsp").forward(request,response);
		}
		else{
			if ((int)session.getAttribute("current")!=100+Integer.parseInt(j))
			{
				 int[] B=new int[5];
				 B=(int[])session.getAttribute("A");
				 session.setAttribute("Total", B[xwr]);
				 session.setAttribute("current", xwr);
			     request.getRequestDispatcher("basket.jsp").forward(request,response);
			}
			else{
				System.out.println("kb: " + (int)session.getAttribute("current"));
				request.getRequestDispatcher("basket.jsp").forward(request,response);
			}
		}



 %>
 <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    finally{
        st.close();
        conn.close();
    }
    %>
</body>
</html>