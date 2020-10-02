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
 * Servlet implementation class discount
 */
@WebServlet("/discount")
public class discount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public discount() {
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
	  		int j,k;
			String vouch = request.getParameter("Code");
			System.out.println("username: " + vouch);
			Connection conn = null;
  	        try {
	        	String url = "jdbc:mysql://localhost:3306/cheap_bits";
				conn = DriverManager.getConnection(url,"root",null);
		        Statement stmt = null;
  	          //String query =  "SELECT * from user WHERE  Username = '"+ username +"' AND Password='"+ password +"'";
  	          try {
  	              stmt = conn.createStatement();
  	              HttpSession session = request.getSession();
	  	          if(vouch.equals("studentdiscount") && session.getAttribute("check")==null) {
	  	        	    session.setAttribute("check", true);
	  					j=(int)session.getAttribute("Total");
	  					System.out.println("loaded: " + j);
	  			        k=(2*j) / 10;
	  			        j=j-k;
	  			        System.out.println("lolded: " + j);
	  			        session.setAttribute("Total", j);
	  			        session.setAttribute("current", null);
	  		            request.getRequestDispatcher("basket.jsp").forward(request,response);
	  			  }
	  	          else {
	  				request.getRequestDispatcher("basket.jsp").forward(request,response);
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