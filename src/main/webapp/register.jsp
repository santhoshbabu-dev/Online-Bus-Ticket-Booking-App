<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(90deg, #f5f5f5, #e8e8e8);
	font-family: Arial;
}

.register-box {
	width: 450px;
	margin: 80px auto;
	background: white;
	padding: 30px;
	border-radius: 15px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

.btn-register {
	background: #ff4b00;
	color: white;
}

.btn-register:hover {
	background: #e63e00;
}
</style>

</head>

<body>

	<div class="register-box">

		<h3 class="text-center mb-4">User Registration</h3>

		<form name="registerForm" action="RegisterController" method="post">

			<div class="mb-3">
				<label>Username</label> <input type="text" name="username"
					class="form-control" required>
			</div>

			<div class="mb-3">
				<label>First Name</label> <input type="text" name="firstname"
					class="form-control" required>
			</div>

			<div class="mb-3">
				<label>Last Name</label> <input type="text" name="lastname"
					class="form-control" required>
			</div>

			<div class="mb-3">
				<label>Password</label> <input type="password" name="password"
					class="form-control" required>
			</div>

			<div class="mb-3">
				<label>Email</label> <input type="email" name="email"
					class="form-control" required>
			</div>

			<div class="mb-3">
				<label>Phone Number</label> <input type="text" name="phonenumber"
					class="form-control" required>
			</div>

			<div class="d-grid">
				<button type="submit" class="btn btn-register">Register</button>
			</div>

			<div>
				<p>
					Already have an account? <a href="login.jsp">Login Here</a>
				</p>
			</div>

		</form>

	</div>

</body>
</html>