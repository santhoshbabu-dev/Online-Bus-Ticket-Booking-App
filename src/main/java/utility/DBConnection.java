package utility;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	Connection con = null;

	public Connection getConnection() throws SQLException {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineBusTicketBookingApp", "root", "root");
			
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}

		return con;

	}

}

