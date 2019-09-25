<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Confirmation</title>
<h3>User Registered with the following details:</h3>
</head>
<body>
	<% String fName = request.getParameter("firstname");
	String lName = request.getParameter("lastname");
	String mName = request.getParameter("middlename");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone"); %>
	
	<table cellpadding= "3px";border="1px"; >
		<tr>
					<td>First Name</td>
					<td><%= fName %></td>
				</tr>
				<tr>
					<td>Middle Name</td>
					<td><%= mName %></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><%= lName %></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><%= email %></td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td><%= phone %></td>
				</tr>	</table>
</body>
</html>