<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Select a Scope</title>
</head>

<body>
	<h1>User Defined</h1>
	<ul>

		<li><a href="../AllScope">All</a></li>

	</ul>

	<hr>
	<h1>One by One</h1>
	<form action='el-process-scope.jsp'>
		Select a scope: <select name='scope'>
			<option value='page'>page</option>
			<option value='request'>request</option>
			<option value='session'>session</option>
			<option value='application'>application</option>
		</select>

		<p>
			<input type='submit' value='Show Scope Attributes' />
	</form>
</body>
</html>
