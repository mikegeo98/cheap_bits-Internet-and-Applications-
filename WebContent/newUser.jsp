<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
   
   footer {
	  position: fixed;
	  left: 0;
	  bottom: 0;
	  height: 13%;
	  width: 100%;
	  background-color: black;
	  color: black;
	  text-align: center;
	}
</style>
<head>
<meta charset="UTF-8">
<h1 style="font-family:verdana">Cheap Bits</h1>
<title>Cheap Bits</title>
</head> 
<body>
<h2 style="font-family:verdana">Welcome to Cheap Bits. Fill out the form below to register</h2>
<div>
<center><form method="post" action="register.jsp">
<h2 style="font-family:verdana">Sign Up</h2>

 <br>
 <label style="font-family:verdana" for ="name">Name *</label>
 <br>
 <input type="text" name="Onoma" required="true">
 <br>
 <label style="font-family:verdana" for ="name">Surname *</label>
 <br>
 <input type="text" name="Eponumo" required="true">
 <br>
 <label style="font-family:verdana" for ="name">DoB *</label>
 <br>
 <input type="date" name="Gen" required="true">
 <br>
 <label style="font-family:verdana" for ="name">Username *</label>
 <br>
  <input type="text" name="UN" required="true" value=<%=request.getAttribute("name") %>>
 <br>
 <label style="font-family:verdana" for ="name">Password *</label>
 <br>
 <input style="font-family:verdana" type="text" name="Pass" required="true">
 <input style="font-family:verdana" type="submit">
</form></center>
</div></body>
<footer>
  <p></p>
</footer>

</html>

