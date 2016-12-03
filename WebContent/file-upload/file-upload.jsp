<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload Example</title>
</head>
<body>
<h1>Select file(s) to upload</h1>
<form action="upload.file" method="post" enctype="multipart/form-data">
<br /><input type="file" name="file" />
<br /><input type="file" name="file" />
<br /><input type="submit" value="Upload file(s)" />
</form>
</body>
</html>