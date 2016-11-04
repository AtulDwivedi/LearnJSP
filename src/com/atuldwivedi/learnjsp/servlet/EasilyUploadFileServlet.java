package com.atuldwivedi.learnjsp.servlet;

import java.io.IOException;
import java.io.Writer;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class EasilyUploadFileServlet
 */
@WebServlet("/file-upload/easilyupload.file")
@MultipartConfig(location = "C:/uploaded", fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50)
public class EasilyUploadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EasilyUploadFileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Collection<Part> parts = request.getParts();
		for (Part part : parts) {
			for (String headerName : part.getHeaderNames()) {
				part.getHeader(headerName);
			}
			String fileInfo = part.getHeader("Content-Disposition");
			String fileNames[] = fileInfo.split("\"");
			String fileName = fileNames[fileNames.length-1];
			part.write(fileName);
		}
		Writer out = response.getWriter();
		out.write("<h1>File uploaded to C:\\uploaded</h1>");
	}

}
