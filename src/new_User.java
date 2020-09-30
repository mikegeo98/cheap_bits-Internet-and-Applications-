

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
/**
 * Servlet implementation class new_User
 */
@WebServlet("/new_User")
public class new_User extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public new_User() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/newUser.html").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
        // read form fields
        String username = request.getParameter("UN");
        String password = request.getParameter("Pass");
        System.out.println("username: " + username);
        System.out.println("password: " + password);
        // do some processing here...
        // get response writer
        PrintWriter writer = response.getWriter();
        // build HTML code
        String htmlRespone = "<html>";
        htmlRespone += "<h2>Your username is: " + username + "<br/>";      
        htmlRespone += "Your password is: " + password + "</h2>";    
        htmlRespone += "</html>";
        // return response
        writer.println(htmlRespone);
        Connection conn = null;
        try {
          String url = "jdbc:mysql://localhost:3306/cheap_bits";
          conn = DriverManager.getConnection(url,"root",null);

          Statement stmt = null;
          String query =  "SELECT UID from user WHERE  Username = '"+ username +"' AND Password='"+ password +"'";
          try {
              stmt = conn.createStatement();
              ResultSet rs = stmt.executeQuery(query);
              if (rs.next()) {

                  response.sendRedirect("login.html");
              } else {
                  response.sendRedirect("HomePage.html");
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
