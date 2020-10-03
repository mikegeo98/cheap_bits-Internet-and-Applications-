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
	box6{
	  background-color: blue;
	  padding: 1em 1.5em;
	  position: absolute;
	  left: 0px;
	  top: 125px;
	  box-sizing: border-box;
	}
   

</style>
<head>
<meta charset="UTF-8">
<h1 style="font-family:verdana">Cheap Bits</h1>
<title>Cheap Bits</title>
</head> 
<body>
<h2 style="font-family:verdana">Update your personal information in the form below</h2>
<div>
<center><form method="post" action="update.jsp">
<h2 style="font-family:verdana">Profile</h2>

 <br>
 <label style="font-family:verdana" for ="name">Name *</label>
 <br>
 <input type="text" name="Onoma" required="true" value=<%=request.getSession().getAttribute("dame") %>>
 <br>
 <label style="font-family:verdana" for ="name">Surname *</label>
 <br>
 <input type="text" name="Eponumo" required="true" value=<%=request.getSession().getAttribute("surname") %>>
 <br>
 <label style="font-family:verdana" for ="name">Date of Birth *</label>
 <br>
 <input type="date" name="Gen" required="true" value=<%=request.getSession().getAttribute("date") %>>
  <input style="font-family:verdana" type="submit">
 <br>
</form></center>
  <box6><form method="post" action="HopePage.jsp">

 <input style="font-family:verdana" type="submit" value="Back">

</form></box6>
</div></body>

</html>

