<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>BusGo - Login</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(90deg, #f5f5f5, #e8e8e8);
	font-family: Arial;
}

.login-container {
	width: 420px;
	margin: 100px auto;
	background: white;
	padding: 35px;
	border-radius: 15px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
}

.logo {
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 20px;
}

.logo span {
	color: #ff4b00;
}

.btn-login {
	background: #ff4b00;
	color: white;
	border: none;
}

.btn-login:hover {
	background: #e63e00;
}

.register-link {
	text-align: center;
	margin-top: 15px;
}
</style>

</head>

<body>

	<div class="login-container">

		<div class="logo">
			Bus<span>Go</span>
		</div>

		<h4 class="text-center mb-4">User Login</h4>

		<form action="LoginController" method="post">

			<div class="mb-3">

				<label class="form-label">Username</label> <input type="text"
					name="username" class="form-control" placeholder="Enter username"
					required>

			</div>

			<div class="mb-3">

				<label class="form-label">Password</label> <input type="password"
					name="password" class="form-control" placeholder="Enter password"
					required>

			</div>

			<div class="d-grid">

				<button type="submit" class="btn btn-login">Login</button>

			</div>

		</form>

		<div class="register-link">

			<p>
				Don't have an account? <a href="register.jsp">Register Here</a>
			</p>

		</div>

	</div>

</body>
</html>