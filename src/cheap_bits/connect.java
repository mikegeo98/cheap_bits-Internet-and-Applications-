package cheap_bits;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Connect 
{ 
	public static void main(String[] args) {
	    Connection con = null;

	    String url = "jdbc:mysql://localhost:3306/cheap_bits";
	    String username = "root";
	    String password = "";

	    try {
	      Class.forName("com.mysql.jdbc.Driver");
	      con = DriverManager.getConnection(url, username, null);

	      System.out.println("Connected!");

	    } catch (SQLException ex) {
	        throw new Error("Error ", ex);
	    } finally {
	      try {
	        if (con != null) {
	            con.close();
	        }
	      } catch (SQLException ex) {
	          System.out.println(ex.getMessage());
	      }
	    }
	  }
}
