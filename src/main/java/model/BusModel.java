package model;


public class BusModel {
	private int busId;
	private String busname;
	private String source;
	private String destination;
	private String depaturetime;
	private String arrivaltime;
	private int price;

	public BusModel() {

	}
	
	public int getBusId() {
		return busId;
	}

	public void setBusId(int busId) {
		this.busId = busId;
	}

	public String getBusname() {
		return busname;
	}

	public void setBusname(String busname) {
		this.busname = busname;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDepaturetime() {
		return depaturetime;
	}

	public void setDepaturetime(String depaturetime) {
		this.depaturetime = depaturetime;
	}

	public String getArrivaltime() {
		return arrivaltime;
	}

	public void setArrivaltime(String arrivaltime) {
		this.arrivaltime = arrivaltime;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {

		return busname + " " + source + " " + destination + " " + depaturetime + " " + arrivaltime + " " + price;
	}

}
