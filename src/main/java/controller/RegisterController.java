package controller;

import java.io.IOException;

import DAO.DAORegistation;
import jakarta.servlet.RequestDispatcher;
//import DAO.RegistationDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.RegistationModel;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String status = "fail";
		
		String username = request.getParameter("username");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phnumber = request.getParameter("phonenumber");
		System.out.println("Servlets printed");

		RegistationModel rm = new RegistationModel();
		rm.setUsername(username);
		rm.setFirstname(firstname);
		rm.setLastname(lastname);
		rm.setPassword(password);
		rm.setEmail(email);
		rm.setPhonenumber(phnumber);

		DAORegistation rdao = new DAORegistation();
		status = rdao.Registation(rm);

		if (status.equals("success")) {
		    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		    rd.forward(request, response);

		} else {

		    RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
		    rd.forward(request, response);
		}

	}

}
