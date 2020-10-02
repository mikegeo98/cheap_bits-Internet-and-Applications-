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
	  width: 120px;
	  height:90px;

	  margin-top: 170px;   
	  margin-left: 860px;   
	

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

box{
  background-color: red;
  padding: 1em 1.5em;
  position: absolute;
  left: 1px;
  top: 275px;
  box-sizing: border-box;
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
  left: 960px;
  top: 110px;
  box-sizing: border-box;
}
box5{
  background-color: red;
  padding: 1em 1.5em;
  position: absolute;
  left: 960px;
  top: 210px;
  box-sizing: border-box;
}
input{
  background-color: red;
  padding: 1em 1.5em;
  box-sizing: border-box;
}


/* Non-Demo Styles */

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
	  </tr>
	</table>
<box><form method="post" action="pageUpdate.jsp">

 <input style="font-family:verdana" type="submit" value="Update Profile">
  
</form></box>
<box3><form method="post" action="basket.jsp">

 <input style="font-family:verdana" type="submit" value="My Basket">
  
</form></box3>
<box5><form method="post" action="myorders.jsp">

 <input style="font-family:verdana" type="submit" value="My Orders">
  
</form></box5>
<box2><form method="post" action="products.jsp">

 <input style="font-family:verdana" type="submit" value="Check Available Products">
  
</form></box2>
<div><form method="post" action="logout">
 <input style="font-family:verdana" type="submit" value="Logout" >
</form></div>
	

	<footer> Thanks for joining! Date : <%=new java.util.Date() %></footer>	
</body>
</html>