import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
/**
 * Servlet implementation class add_cart
 */
@WebServlet("/add_cart")
public class add_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_cart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

  	protected void doPost(HttpServletRequest request,
  	        HttpServletResponse response) throws ServletException, IOException {
  	        // read form fields
	        String id = request.getParameter("id");
	        String na = request.getParameter("name");
	        String pr = request.getParameter("price");
	        int ide=Integer.parseInt(id);  
	        int j;
  	        // do some processing here...
  	        // get response writer
  	        PrintWriter writer = response.getWriter();
  	        
  	        // build HTML code
  	        String htmlResponse = "<html>";
  	        htmlResponse += "Your password is: " + id + "</h2>";    
  	        htmlResponse += "</html>";
  	        // return response
  	        writer.println(htmlResponse);
  	        Connection conn = null;
  	        try {
  	          String url = "jdbc:mysql://localhost:3306/cheap_bits";
  	          conn = DriverManager.getConnection(url,"root",null);

  	          Statement stmt = null;
  	          //String query =  "SELECT * from user WHERE  Username = '"+ username +"' AND Password='"+ password +"'";
  	          try {
  	              stmt = conn.createStatement();
  	              HttpSession session = request.getSession();
  	  			  if (session.getAttribute("Cart")==null)
  	  			  {
		  			  String[][] Cart=new String[30][2];
		  			  int sum=0;
		  			  Cart[ide][0]=na;
			          Cart[ide][1]=pr;
			          sum=Integer.parseInt(pr);
			          System.out.println("йд: " + id);
			          System.out.println("йде: " + Cart[ide][0]);  
		              session.setAttribute("Cart", Cart);
		              session.setAttribute("Total", (123*sum)/100);
		              request.getRequestDispatcher("products.jsp").forward(request,response);
  	              }
  	  			  else {
  	  				  String Cart[][]=(String[][])session.getAttribute("Cart");
  	  				  if(Cart[ide][0]==null){
  	  				  Cart[ide][0]=na;
			          Cart[ide][1]=pr;
			          j=(int)session.getAttribute("Total");
			          j=j+(123*Integer.parseInt(pr))/100;
			          System.out.println("йд: " + id);
			          System.out.println("йде: " + Cart[ide][0]);
			          session.setAttribute("current", null);
			          session.setAttribute("Total", j);
		              session.setAttribute("Cart", Cart);
  	  				  }
		              request.getRequestDispatcher("products.jsp").forward(request,response);
  	  			  }
  	              

  	              

  	              
  	          } catch (SQLException e ) {
  	              throw new Error("Problem", e);
  	          } finally {
  	              if (stmt != null) { stmt.close(); }
  	          }

  	        } catch (SQLException e) {
  	            throw new Error("Problem", e);
  	        } finally {
  	          try {
  	            if (conn != null) {
  	                conn.close();
  	            }
  	          } catch (SQLException ex) {
  	              System.out.println(ex.getMessage());
  	          }
  	        }
  	    }

  	}