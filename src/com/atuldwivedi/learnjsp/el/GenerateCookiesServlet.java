package com.atuldwivedi.learnjsp.el;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GenerateCookiesServlet
 */
@WebServlet("/GenerateCookiesServlet")
public class GenerateCookiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GenerateCookiesServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] cookieNames = { "email", "gender"};
		String[] cookieValues = { "atul.wnw@gmail.com", "Male"};

		// Create cookies and add them to the HTTP response
		for (int i = 0; i < cookieNames.length; ++i) {
			Cookie cookie = new Cookie(cookieNames[i], cookieValues[i]);
			response.addCookie(cookie);
		}

		// Forward the request and response to cookies.jsp
		RequestDispatcher rd = request.getRequestDispatcher("el/el-cookies.jsp");
		rd.forward(request, response);
	}
}
