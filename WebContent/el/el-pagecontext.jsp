<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EL - pageContext</title>
</head>
<body>

      <%-- Show Request Information --%>
      <font size='5'>Request Information</font><p>

         <%-- Use the request object to show the server port and
                protocol --%>
The current request was made on <b>port 
         <c:out value="${pageContext.request.serverPort}"/></b>	
 with this <b>protocol:
         <c:out value='${pageContext.request.protocol}'/></b>.<br>

         <%-- Use the request object to show the user's preferred
              locale --%>
         The request <b>locale</b> is 
         <b><c:out value='${pageContext.request.locale}'/>.</b>

         <p>

      <%-- Show Response Information --%>
      <font size='5'>Response Information</font><p>

         The response <b>locale</b> is 
         <b><c:out value='${pageContext.response.locale}'/>.</b>

         <%-- Use the response object to show whether the response
              has been committed 
          The <b>response
         <c:choose>
            <c:when test="${pageContext.response.commited}">
               has
            </c:when>

            <c:otherwise>
               has not
            </c:otherwise>
         </c:choose>   
         </b> been committed. 
--%>
         <p>

      <%-- Show Session Information --%>
      <font size='5'>Session Information</font><p>

         Session ID: 
         <b><c:out value='${pageContext.session.id}'/></b><br>
         Max Session Inactive Interval:<b>
         <c:out 
            value='${pageContext.session.maxInactiveInterval}'/> 
         </b>seconds.

         <p>

      <%-- Show Application Information --%>
      <font size='5'>Application Information</font><p>
	
 <%-- Store the servlet context in a page-scoped variable
              named app for better readability --%>
         <c:set var='app' value='${pageContext.servletContext}'/>

         <%-- Use the application object to show the major and
              minor versions of the servlet API that the container
              supports --%>
         Your servlet container supports version<b> 
         <c:out 
            value='${app.majorVersion}.${app.minorVersion}'/></b>
         of the servlet API.

</body>
</html>