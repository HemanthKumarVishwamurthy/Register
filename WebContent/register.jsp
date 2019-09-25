<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
</head>
<style>
div.registrationForm {
	text-align: right;
	width: 300px;
	padding: 10px;
	border: 5px solid grey;
	margin: 0px;
}

h3.customFont {
	color: blue;
}
</style>
<body bgcolor="#FBF6F5">
	<h3 class="customFont">Registration Form</h3>
	<div class="registrationForm">
		<form action="RegistrationController" method="post">
			<table>
				<tr>
					<td>First Name*</td>
					<td><input type="text" name="firstname" /></td>
				</tr>
				<tr>
					<td>Middle Name</td>
					<td><input type="text" name="middlename" /></td>
				</tr>
				<tr>
					<td>Last Name*</td>
					<td><input type="text" name="lastname" /></td>
				</tr>
				<tr>
					<td>Email*</td>
					<td><input type="text" name="email" /></td>
				</tr>
				<tr>
					<td>Phone Number*</td>
					<td><input type="text" name="phone" /></td>
				</tr>
			</table>
			<input type="submit" value="Register">
		</form>
	</div>

</body>
</html>