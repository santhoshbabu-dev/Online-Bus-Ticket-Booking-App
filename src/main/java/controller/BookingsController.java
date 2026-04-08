package controller;

import java.io.IOException;

import DAO.BookingsDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.BookingsModel;

@WebServlet("/BookingsController")
public class BookingsController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int busId = Integer.parseInt(request.getParameter("busId"));
		String seats = request.getParameter("seats");   // changed to String
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");

		BookingsModel booking = new BookingsModel();

		booking.setBusId(busId);
		booking.setSeats(seats);
		booking.setName(name);
		booking.setAge(age);
		booking.setGender(gender);
		booking.setPhoneNumber(phone);
		booking.setEmail(email);

		BookingsDAO dao = new BookingsDAO();

		String status = dao.saveBookings(booking);

		if (status.equals("success")) {

			request.setAttribute("name", name);
			request.setAttribute("busId", busId);
			request.setAttribute("seats", seats);

			RequestDispatcher rd = request.getRequestDispatcher("ticket.jsp");
			rd.forward(request, response);
		}
	}
}