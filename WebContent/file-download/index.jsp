<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Download Example</title>
</head>
<body>
	<%
		String path = request.getRealPath("/");
		path = path + "WEB-INF/files";
		File dir = new File(path);
		String str[] = dir.list();

		if (str.length == 0) {
	%>
	<font color="red">No files to download.</font>
	<%
		}else{
			for(int i = 0; i < str.length; i++) {
				String fileName = str[i];
	%>
	<br><%= fileName %>:
	<a href="download.file?filename=<%= fileName %>">Download</a>
	<%
		}
		}
	%>
</body>
</html>