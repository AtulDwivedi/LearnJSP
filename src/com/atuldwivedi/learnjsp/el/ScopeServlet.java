package com.atuldwivedi.learnjsp.el;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ScopeServlet
 */
@WebServlet(value = { "/AllScope", "/pageScope", "/requestScope", "/sessionScope", "/applicationScope" })
public class ScopeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ScopeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String requestUri = request.getRequestURI();

		request.setAttribute("name", "Atul Dwivedi");
		
		List<String> modules = new ArrayList<String>();
		modules.add("Java Module 2");
		modules.add("Java Module 3");
		request.setAttribute("modules", modules);
		
		Assignment assignement = new Assignment("Assign001", "Expression Language first assignement.");
		Course course = new Course("Advance Java", assignement);
		request.setAttribute("course", course);
		
		Assignment assignement1 = new Assignment("Assign101", "Expression Language 1st assignement.");
		Course course1 = new Course("Advance Java 1", assignement);
		Assignment assignement2 = new Assignment("Assign102", "Expression Language 2nd assignement.");
		Course course2 = new Course("Advance Java 2", assignement);
		List<Course> courses = new ArrayList<Course>();
		courses.add(course1);
		courses.add(course2);
		request.setAttribute("courses", courses);
		
		Map<String, String> trainer = new HashMap<String, String>();
		trainer.put("trainerName", "Martin");
		trainer.put("courseName", "Java");
		request.setAttribute("trainer", trainer);
		
		
		Map<String, String> trainer1 = new HashMap<String, String>();
		trainer1.put("trainerName", "Linus");
		trainer1.put("courseName", "Linux");

		Map<String, String> trainer2 = new HashMap<String, String>();
		trainer2.put("trainerName", "Martin");
		trainer2.put("courseName", "Microservices");
		
		List<Map> trainers = new ArrayList<Map>();
		trainers.add(trainer1);
		trainers.add(trainer2);
		request.setAttribute("trainers", trainers);

		
		
		
		
		
		
		
		
		
		
		
		
		
		HttpSession session = request.getSession();
		session.setAttribute("userName", "AtulDwivedi");
		
		

		getServletConfig().getServletContext().setAttribute("copyright", "2018");

		request.getRequestDispatcher("el/el-all-scope.jsp").forward(request, response);
	}

}
