package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.LoginModel;
import model.RegistationModel;
import utility.DBConnection;

public class DAORegistation implements InterfaceRegistation {
	String status = "fail";
	Connection con = null;

	@Override
	public String Registation(RegistationModel rm) {

		try {

			DBConnection db = new DBConnection();
			con = db.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"INSERT INTO users(username, firstname, lastname, password, email, phonenumber) VALUES (?, ?, ?, ?, ?, ?)");
			ps.setString(1, rm.getUsername());
			ps.setString(2, rm.getFirstname());
			ps.setString(3, rm.getLastname());
			ps.setString(4, rm.getPassword());
			ps.setString(5, rm.getEmail());
			ps.setString(6, rm.getPhonenumber());
			int n = ps.executeUpdate();

			if (n > 0) {
				status = "success";
			}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	@Override
	public String selectByUserName(LoginModel l) {
		String status = "fail";
		try {

			int count = 0;

			DBConnection d = new DBConnection();
			con = d.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from users where username = ? and password = ?");
			ps.setString(1, l.getUsername());
			ps.setString(2, l.getPassword());
			ResultSet s = ps.executeQuery();

			while (s.next()) {
				count++;
			}

			if (count > 0) {
				status = "success";
				System.out.println("Servlet retreived");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

}
