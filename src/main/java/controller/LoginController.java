package controller;

import java.io.IOException;

import DAO.DAORegistation;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.LoginModel;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String status;

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		LoginModel l = new LoginModel();
		l.setUsername(username);
		l.setPassword(password);

		DAORegistation r = new DAORegistation();
		status = r.selectByUserName(l);

		if (status.equals("success")) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			System.out.println("Servlet entered");

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}

	}

}
