<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel='stylesheet' href='CSS/forms.css'>
		<title>Registration Form</title>
	</head>
	<body>
	<p></p>
		<div class='back'>
			<h1>Rutgers Scholar Commons Registration</h1>
			<form action="register" method="POST">
				Username: <input type="text" class='login' name="username">
				Password: <input type="password" name="password">
				Email: <input type="email" name="email">
				Major: <input type="text" name="major">
				<div class='link'>
					<input type="submit" value="Register"/><br>
					<a href='login.jsp'>Go back to login page</a>
				</div>
			</form>
		</div>
	</body>
</html>