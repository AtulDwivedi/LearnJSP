<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learning JSP</title>
</head>
<body>
<h3>JSP Directives</h3>
<ol>
<li><a href="directive/include-directive.jsp">include directive</a></li>
<li><a href="directive/page-directive.jsp">page directive</a></li>
<li><a href="directive/include-directive.jsp">taglib directive</a></li>
</ol>

<h3>JSP Standard Actions</h3>
<ol>
<li><a href="action/include-action.jsp">include action</a></li>
<li><a href="action/forward-action.jsp">forward</a></li>
<li>param</li>
<li><a href="action/usebean-action.jsp">useBean</a></li>
<li>setProperty</li>
<li>getProperty</li>
</ol>
<h3>JSTL</h3>
<ol>
<li><a href="jstl/core-tags/jstl-core-tags.jsp">JSTL Core Tags</a></li>
<li><a href="jstl/custom-tags/jstl-custom-tags.jsp">JSTL Custom Tags</a></li>
</ol>

<h1>Login App using HttpSession</h1>  
<a href="login.html">Login</a>|  
<a href="LogoutServlet">Logout</a>|  
<a href="ProfileServlet">Profile</a>


<h3>EL - Expression Language</h3>
<ul>
<li><a href="el/param-and-paramvalues.jsp">param and paramValues</a></li>
<li><a href="el/header-and-headervalues.jsp">header and headerValues</a></li>
<li><a href="GenerateCookiesServlet">Fetch Cookies using EL</a></li>
<li><a href="el/el-initparam.jsp">Fetch initParam using EL</a></li>
<li><a href="el/el-pagecontext.jsp">Fetch pageContext using EL</a></li>
<li><a href="el/el-scope.jsp">Fetch scope using EL</a></li>
</ul>  
</body>
</html>