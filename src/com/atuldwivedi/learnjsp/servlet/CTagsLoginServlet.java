package com.atuldwivedi.learnjsp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CTagsLoginServlet
 */
@WebServlet("/CTagsLoginServlet")
public class CTagsLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CTagsLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		boolean err = false;
		String page = "custom-tags/login.jsp";

		if (userName == null || userName.trim().length() == 0) {
			request.setAttribute("userName", "User name is mandatory");
			err = true;
		}

		if (password == null || password.trim().length() == 0) {
			request.setAttribute("password", "Password is mandatory");
			err = true;
		}

		if (!err) {
			page = "custom-tags/home.jsp";
		}
		request.getRequestDispatcher(page).forward(
				request, response);
	}

}
