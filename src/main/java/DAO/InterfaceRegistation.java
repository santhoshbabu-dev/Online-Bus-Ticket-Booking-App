package DAO;


import model.LoginModel;
import model.RegistationModel;

public interface InterfaceRegistation {

	public String Registation(RegistationModel rm);
	
	public String selectByUserName(LoginModel l);
	
	
	
}
