package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.BusModel;
import utility.DBConnection;

public class DAOBus implements BusInterface {

	@Override
	public List<BusModel> searchBus(String source, String destination) {
		DBConnection db = new DBConnection();
		Connection con = null;
		List<BusModel> busList = new ArrayList<>();

		try {

			con = db.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from buses where source = ? and destination = ?");
			ps.setString(1, source);
			ps.setString(2, destination);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				BusModel bus = new BusModel();

				bus.setBusId(rs.getInt("id"));
				bus.setBusname(rs.getString("bus_name"));
				bus.setSource(rs.getString("source"));
				bus.setDestination(rs.getString("destination"));
				bus.setDepaturetime(rs.getString("depature_time"));
				bus.setArrivaltime(rs.getString("arrival_time"));
				bus.setPrice(rs.getInt("price"));

				busList.add(bus);
			}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return busList;
	}

}
