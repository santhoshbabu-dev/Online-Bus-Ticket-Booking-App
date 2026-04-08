package DAO;

import java.util.List;

import model.BusModel;

public interface BusInterface {
	public List<BusModel> searchBus(String source, String destination);
	
}
