<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	border: 8px solid #000000;
	color: white; 
   }
   div {
	  width: 220px;
	  height:450px;
	  border: 5px solid black;
	  margin: 0;   
	  margin-left: 860px;   
	  box-sizing: border-box;
	  background:#3399ff
	}
   
   footer {
	  position: fixed;
	  left: 0;
	  bottom: 0;
	  height: 13%;
	  width: 100%;
	  background-color: black;
	  color: white;
	  text-align: center;
	}
	table {
	  border-collapse
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
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<h1 style="font-family:verdana">Cheap Bits</h1>
<title>Cheap Bits</title>
</head>
<body>

	<h2> Welcome <%=request.getSession().getAttribute("user") %></h2>
	<table style="width:15%">
	<th>Profile Details</th>
	  <tr>
	    <td>Username:<%=request.getSession().getAttribute("user") %></td>
	    </tr>
	    <td>Password:<%=request.getSession().getAttribute("password") %></td>
	    </tr>
	    <td>First Name:<%=request.getSession().getAttribute("dame") %></td>
	    </tr>
	    <td>Last Name:<%=request.getSession().getAttribute("surname") %></td>
	    </tr>
	    <td>Date Of Birth:<%=request.getSession().getAttribute("date") %></td>
	    </tr>
	    <td>User Unique ID:<%=request.getSession().getAttribute("uid") %></td>
	    </tr>
	    <td>50</td>
	  </tr>
	</table>
		
	<h5> The request was made with the <%=request.getMethod()%> HTTP method</h5>
	<footer> Thanks for joining! Date : <%=new java.util.Date() %></footer>	
</body>
</html>