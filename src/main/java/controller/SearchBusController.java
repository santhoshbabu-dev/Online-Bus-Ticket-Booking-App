package controller;

import java.io.IOException;
import java.util.List;

import DAO.DAOBus;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.BusModel;

@WebServlet("/SearchBusController")
public class SearchBusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String source = request.getParameter("from");
		String destination = request.getParameter("to");

		DAOBus dao = new DAOBus();
		List<BusModel> buslist = dao.searchBus(source, destination);

		request.setAttribute("busList", buslist);
		RequestDispatcher rd = request.getRequestDispatcher("busList.jsp");	
		rd.forward(request, response);

	}

}
