package com.user.register;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter outPut = response.getWriter();
		
		String fName = request.getParameter("firstname");
		String lName = request.getParameter("lastname");
		String mName = request.getParameter("middlename");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		if(fName.isEmpty() || lName.isEmpty() || email.isEmpty() || phone.isEmpty()) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
			outPut.println("<font color=red><h3>Please fill all mandatory fields<h3></font>");
			dispatcher.include(request, response);
		} else {
		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
		dispatcher.forward(request, response);
		}
	}

}
