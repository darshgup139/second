<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign TPO</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<h2>Assign TPO</h2>
	<form:form method="POST" action="/AddTPO/SubmitInsertUser">
		<table>
			<tr>
				<td><form:label path="userName">User name:</form:label></td>
				<td><form:input path="userName" /></td>
				<td><form:errors path="userName" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
}

td {
	font-size: 15px;
	color: black;
	width: 100px;
	height: 22px;
	text-align: left;
}

.heading {
	font-size: 18px;
	color: white;
	font: bold;
	background-color: orange;
	border: thick;
}
</style>
</head>
<body>
	<center>
		<br /> <br /> <br /> <b>Placement System | Assign TPC </b> <br />
		<br />
		<div>
			<form action="/AddTPO/SubmitInsertUser" method="post">
				<table border="1">
					<tr>
						<th>UserName</th>
						<td><input type="text" name="userName"
							value="${user.userName}"></td>
					</tr>
					<tr>
						<th>TPC Type:</th>
						<td><form:radiobuttons path="userRole"
								items="${map.TPCList}" />
							Student-TPC<input type="radio" name="userRole" value="Student">
							Faculty-TPC<input type="radio" name="userRole" value="Faculty">		
						</td>
					</tr>
					<tr>
						<th></th>
						<td><input type="submit"></td>
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>
 --%>