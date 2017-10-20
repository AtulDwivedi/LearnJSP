
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Scoped Variables</title>
</head>

<body>
	<c:choose>
		<c:when test='${param.scope == "page"}'>
			<c:set var='scope' value='${pageScope}' />
		</c:when>
		<c:when test='${param.scope == "request"}'>
			<c:set var='scope' value='${requestScope}' />
		</c:when>
		<c:when test='${param.scope == "session"}'>
			<c:set var='scope' value='${sessionScope}' />
		</c:when>
		<c:when test='${param.scope == "application"}'>
			<c:set var='scope' value='${applicationScope}' />
		</c:when>
	</c:choose>

	<font size='5'> <c:out value='${param.scope}' />-scope
		attributes:
	</font>
	<p>


		<c:forEach items='${scope}' var='p'>
			<ul>
				<li>Parameter Name: <c:out value='${p.key}' /></li>
				<li>Parameter Value: <c:out value='${p.value}' /></li>
			</ul>
		</c:forEach>
</body>
</html>
