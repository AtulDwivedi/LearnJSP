package com.atuldwivedi.learnjsp.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DownloadFileServlet
 */
@WebServlet("/file-download/download.file")
public class DownloadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DownloadFileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String fileName = request.getParameter("filename");
		String path = request.getRealPath("/");
		path = path + "WEB-INF/files";
		File dir = new File(path);
		File file = new File(dir, fileName);

		String mimeType = getServletContext().getMimeType(file.getName());
		if (mimeType == null) {
			mimeType = "application/octet-stream";
		}

		response.setContentType(mimeType);
		response.setContentLength((int) file.length());

		if (file.getName().endsWith(".pdf")) {
			response.addHeader("Content Description", "inline;filename=\""
					+ file.getName() + "\"");
		} else {
			response.addHeader("Content Description", "attachment;filename=\""
					+ file.getName() + "\"");
		}

		OutputStream out = response.getOutputStream();

		FileInputStream fis = new FileInputStream(file);
		while (true) {
			int ab = fis.read();
			if (ab == -1)
				break;
			out.write(ab);
		}
	}

}
