package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.BookingsModel;
import utility.DBConnection;

public class BookingsDAO implements BookingsInterface {

	@Override
	public String saveBookings(BookingsModel booking) {

		String status = "fail";

		try {

			DBConnection db = new DBConnection();
			Connection con = db.getConnection();

			PreparedStatement ps = con.prepareStatement(
					"INSERT INTO bookings(bus_id,seats,name,age,gender,phone_number,email) VALUES(?,?,?,?,?,?,?)");

			ps.setInt(1, booking.getBusId());
			ps.setString(2, booking.getSeats());  // seats as String
			ps.setString(3, booking.getName());
			ps.setInt(4, booking.getAge());
			ps.setString(5, booking.getGender());
			ps.setString(6, booking.getPhoneNumber());
			ps.setString(7, booking.getEmail());

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
}