package com.atuldwivedi.learnjsp.servlet;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadFileServlet
 */
@WebServlet("/file-upload/upload.file")
public class UploadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadFileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		File dir = new File("C:\\upload");
		if (!dir.exists())
			dir.mkdir();
		Writer out = response.getWriter();
		boolean uploadData = ServletFileUpload.isMultipartContent(request);
		if (uploadData) {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			factory.setSizeThreshold(1024 * 1024 * 10);
			factory.setRepository(new File("C:\\t"));

			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setFileSizeMax(1024 * 1024 * 10);

			try {
				List<FileItem> fileItem = upload.parseRequest(request);
				Iterator<FileItem> it = fileItem.iterator();
				while (it.hasNext()) {
					FileItem fi = (FileItem) it.next();

					if (!fi.isFormField()) {
						String fieldName = fi.getFieldName();
						String fileName = fi.getName();
						String contentType = fi.getContentType();
						boolean isinMemory = fi.isInMemory();
						long sizeInBytes = fi.getSize();
						StringTokenizer tok = new StringTokenizer(fileName,
								"\\");
						String fileToWrite = "";

						while (tok.hasMoreTokens()) {
							fileToWrite = tok.nextToken();
						}

						File file = new File(dir, fileToWrite);
						fi.write(file);
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			out.write("<h1>File Uploaded in<br>" + dir.getAbsolutePath());
		} else {
			out.write("<h1>No file uploaded</h1>");
		}
	}
}
