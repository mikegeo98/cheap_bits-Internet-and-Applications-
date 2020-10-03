<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

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
	box2{
	  background-color: red;
	  padding: 1em 1.5em;
	  position: absolute;
	  left: 500px;
	  top: 275px;
	  box-sizing: border-box;
	}
	box3{
	  background-color: red;
	  padding: 1em 1.5em;
	  position: absolute;
	  left: 500px;
	  top: 325px;
	  box-sizing: border-box;
	}
	box4{
	  background-color: red;
	  padding: 1em 1.5em;
	  position: absolute;
	  left: 500px;
	  top: 425px;
	  box-sizing: border-box;
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
<meta charset="UTF-8">
<%
	String connectionURL = "jdbc:mysql://localhost:3306/cheap_bits";
	Connection conn = null;
	Statement st = null;	
	ResultSet rs = null;
%>
</head>
<h1 style="font-family:verdana">Cheap Bits</h1>
<title>Cheap Bits</title>
<body>
<%
    try
    {
    	conn = DriverManager.getConnection(connectionURL, "root",null);
    	st=conn.createStatement();
    	int i=0;
    	int b=0;
    %>

    
    <table style='font-family:"Verdana", Courier, monospace; font-size:100%' width="55%" border=1 align=center style="text-align:center" font-size:80%>
      <thead>
          <tr> 
             <th>Name</th>
             <th>Price</th>
          </tr>
      </thead>
      <%while(i<30)
      { 
    	
      	if(((String[][])session.getAttribute("Cart"))[i][0]!=null){
          %>
            <tr> 
                <td><%=((String[][])session.getAttribute("Cart"))[i][0]%></td>
                <td><%=((String[][])session.getAttribute("Cart"))[i][1]%></td>
            </tr>
          </form>
          <%}

      	  i=i+1;
          }%>
          
          	<tr><tr><tr><tr><tr>
               	<td >Final Cost(VAT Included)</td> 
               	          <%Boolean j=(Boolean)session.getAttribute("check");
               	            if(j!=null){%>
               	        	<td style="background-color:red"><%=(session.getAttribute("Total"))%></tdz>
      	  					<%}else{%>
      	  					<td><%=(session.getAttribute("Total")) %></td>
          						<%}%>
            </tr>
         </tbody>
      </table>
  <%}
  catch(Exception e){
      out.print(e.getMessage());%><br><%
  }
  finally{
      st.close();
      conn.close();
  }
  %>
 <form method="post" action="discount"><center><box2>
 <br>
 <label style="font-family:verdana" for ="name">Enter Voucher Code</label>
 <br>
 <input type="text" name="Code" required="true">
 <br> </box2></center></form>
</box6></center></form>
<%
 	if(session.getAttribute("user")!=null){%>
	<box6><form method="post" action="HopePage.jsp"><center>

 <input style="font-family:verdana" type="submit" value="Back">

</center></form></box4>
<%}else{%>
	<box6><form method="post" action="index.html"><center>

 <input style="font-family:verdana" type="submit" value="Back">

</center></form></box6>
<%}%>
<form method="post" action="vat.jsp"><center><box3>
<label for="country">Choose your country:</label>
<select name="country" id="country">
  <option value=0>Greece</option>
  <option value=1>USA</option>
  <option value=2>China</option>
  <option value=3>South Africa</option>
  <option value=4>United Kingdom</option>
</select>
  <input style="font-family:verdana" type="submit" value="Submit">
</box3></center></form>
<%
 	if(session.getAttribute("user")!=null){%>
	<box4><form method="post" action="order.jsp"><center>

 <input style="font-family:verdana" type="submit" value="Send Order">

</center></form></box4>
<%}else{%>
	<box4><form><center>

 <input style="font-family:verdana" type="submit" value="Send Order" onclick="winOpen()">

</center></form></box4>
<%}%>
</body>
<script>
function winOpen()
{
    window.open("2.png");
}
</script>
</html>