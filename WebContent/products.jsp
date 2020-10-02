<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
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
/* Popup container - can be anything you want */
.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* The actual popup */
.popup .popuptext {
  visibility: hidden;
  width: 160px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;} 
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
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
        rs=st.executeQuery("select * from products;");
    %><table style='font-family:"Verdana", Courier, monospace; font-size:100%' width="55%" border=1 align=center style="text-align:center" font-size:80%>
      <thead>
          <tr> 
             <th>Name</th>
             <th>Type</th>
             <th>Price</th>
             <th></th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {	
            %>
            <form method="post" action="add_cart">
            <tr> 
            	<input type="hidden" name="id"  value=<%=rs.getInt("ProdID")%>>
            	<input type="hidden" name="name" value=<%=rs.getString("Name")%>>
            	<input type="hidden" name="price" value=<%=rs.getInt("Price")%>>
            	<td><%=rs.getString("Name") %></td>

                <td><%=rs.getString("Type") %></td>
                <td><div class="popup" onmouseover="myFunction()">
                <span class="popuptext" id="myPopup"><%=((123*rs.getInt("Price"))/100)%></span>
                <%=rs.getInt("Price")%></td>
                </div>
                <td> <input style="font-family:verdana" type="submit" value="Add To Cart"></td>
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
<script>
// When the user clicks on div, open the popup
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}
</script>
</body>
</html>