package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PassengerController")
public class PassengerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String busId = request.getParameter("busId");
		String seats = request.getParameter("seats");

		request.setAttribute("busId", busId);
		request.setAttribute("seats", seats);
		RequestDispatcher rd = request.getRequestDispatcher("passengerDetails.jsp");
		rd.forward(request, response);

	}

}
