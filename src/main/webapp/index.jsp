<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String user = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BusGo - Bus Booking System</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(90deg, #f5f5f5, #e8e8e8);
	font-family: Arial;
}

/* Navbar */
.navbar-brand {
	font-size: 28px;
	font-weight: bold;
}

.logo {
	color: #ff4b00;
}

.nav-link {
	font-size: 18px;
	margin-right: 15px;
}

/* Hero */
.hero {
	text-align: center;
	padding: 70px 20px;
}

.hero h1 {
	font-size: 55px;
	font-weight: 800;
}

.orange {
	color: #ff4b00;
}

/* Search Card */
.search-card {
	background: white;
	padding: 35px;
	border-radius: 20px;
	width: 85%;
	margin: auto;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
}

.input-box {
	border-radius: 10px;
	padding: 12px;
}

.search-btn {
	background: #ff4b00;
	color: white;
	font-size: 18px;
	border: none;
	border-radius: 10px;
	padding: 12px;
	width: 100%;
}

.search-btn:hover {
	background: #e63e00;
}

/* Footer */
.footer {
	margin-top: 80px;
	background: #222;
	color: white;
	padding: 25px;
	text-align: center;
}
</style>

</head>

<body>

	<!-- NAVBAR -->

	<nav class="navbar navbar-expand-lg bg-white shadow-sm px-5">

		<a class="navbar-brand" href="#"> Bus<span class="logo">Go</span>
		</a>

		<button class="navbar-toggler" data-bs-toggle="collapse"
			data-bs-target="#menu">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse justify-content-center" id="menu">

			<ul class="navbar-nav">

				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="#">Bookings</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="#">Help /
						Support</a></li>

			</ul>

		</div>

		<!-- RIGHT SIDE BUTTONS -->

		<div>

			<%
			if (user == null) {
			%>

			<a href="login.jsp" class="btn btn-outline-dark me-2">Login</a> <a
				href="register.jsp" class="btn btn-dark">Register</a>

			<%
			} else {
			%>

			<span class="me-3 fw-bold text-success"> Welcome <%=user%>
			<a href="LogoutController" class="btn btn-danger">Logout</a>

			<%
			}
			%>

		</div>

	</nav>


	<!-- HERO SECTION -->

	<div class="hero">

		<h1>
			Travel <span class="orange">Smart</span><br> Book Bus <span
				class="orange">Tickets</span> Easily
		</h1>

		<p>Search buses, compare prices and book tickets across India</p>

	</div>


	<!-- SEARCH SECTION -->

	<div class="search-card">

		<form action="SearchBusController" method="post">

			<div class="row g-3">

				<div class="col-md-4">

					<label>From</label> <input type="text" name="from"
						class="form-control input-box" placeholder="Hyderabad" required>

				</div>


				<div class="col-md-4">

					<label>To</label> <input type="text" name="to"
						class="form-control input-box" placeholder="Vijayawada" required>

				</div>


				<div class="col-md-4">

					<label>Travel Date</label> <input type="date" name="date"
						class="form-control input-box" required>

				</div>

			</div>


			<div class="row mt-4">

				<div class="col-md-3 offset-md-9">

					<button type="submit" class="search-btn">Search Buses</button>

				</div>

			</div>

		</form>

	</div>


	<!-- FEATURES -->

	<div class="container mt-5">

		<div class="row text-center">

			<div class="col-md-4">
				<h4>Fast Booking</h4>
				<p>Book bus tickets instantly with secure payment.</p>
			</div>

			<div class="col-md-4">
				<h4>1000+ Routes</h4>
				<p>Travel across multiple cities with trusted operators.</p>
			</div>

			<div class="col-md-4">
				<h4>24/7 Support</h4>
				<p>Our support team helps you anytime.</p>
			</div>

		</div>

	</div>


	<!-- FOOTER -->

	<div class="footer">

		<p>© 2026 BusGo - Bus Ticket Booking System</p>

	</div>

</body>
</html>