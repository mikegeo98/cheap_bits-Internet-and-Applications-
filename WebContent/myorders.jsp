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
<html>
<style type="text/css">
   body {
    margin: 0;
    padding: 0;
	background-image:url("laptop-t2.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-attachment: fixed;
	background-size: 80% 100%;
   }
   h1 {
	font-size: 36px;
	text-align:center;
	backgound-size: contain;
	border: 8px solid #333;
	height: 50px;
    margin: 0 auto; 
	background: #1abc9c;
	color: white; 
   }
      h2 {
	font-size: 25px;
	text-align:center;
	backgound-size: contain;
    margin: 0 auto; 
	background: #000000;
	border: 12px solid #000000; 
	color: white; 
   }
   div {
	  width: 220px;
	  height:450px;
	  
	  border: 6px solid black; 
	  margin: 0;   
	  margin-left: 860px;   
	  box-sizing: border-box;
	  background:#3399ff
	}
   	table {
   	  font:32px;
	  border-collapse;
	  background-color: white;
	}
	th{
	  border: 1px solid black;
	  text-align: left;
	  background-color: #4CAF50;
  	  color: white;
	}
	td{
	  border: 1px solid black;
	  text-align: left;
	  background-color: white;
  	  color: black;
	}
		box6{
	  background-color: blue;
	  padding: 1em 1.5em;
	  position: absolute;
	  left: 0px;
	  top: 65px;
	  box-sizing: border-box;
	}

</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%
    try
    {
    	conn = DriverManager.getConnection(connectionURL, "root",null);
    	st=conn.createStatement();
        rs=st.executeQuery("select * from orders where UserID='"+session.getAttribute("uid")+"'");
    %><table style='font-family:"Verdana", Courier, monospace; font-size:100%' width="55%" border=1 align=center style="text-align:center" font-size:80%>
      <thead>
          <tr> 
             <th>Product Name</th>
             <th>Order Date</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
        	
            %>
            <tr> 
                <td ><%=rs.getString("ProdName") %></td>
                <td><%=rs.getString("Time") %></td>
            </tr>
            </form>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    finally{
        st.close();
        conn.close();
    }
    %>
 <%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(connectionURL, "root",null);
st=conn.createStatement();

int i=st.executeUpdate("select * from orders where UserID='"+session.getAttribute("uid")+"'");
while(rs.next()){
int meme =rs.getInt("ProdID");
int memes =rs.getInt("Date");
request.getRequestDispatcher("HopePage.jsp").forward(request,response);
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
  <box6><form method="post" action="HopePage.jsp">

 <input style="font-family:verdana" type="submit" value="Back">

</form></box6>
</body>
</html>