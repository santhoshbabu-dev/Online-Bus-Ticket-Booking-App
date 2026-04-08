<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String busId = (String) request.getAttribute("busId");
String seats = (String) request.getAttribute("seats");

if (busId == null)
	busId = "";
if (seats == null)
	seats = "";
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Passenger Details</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #f4f6f9;
	font-family: Arial;
}

.booking-card {
	background: white;
	border-radius: 15px;
	padding: 40px;
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
}

.title {
	font-weight: bold;
	margin-bottom: 25px;
}

.btn-book {
	background: #ff4b00;
	color: white;
	font-size: 18px;
	border: none;
	padding: 12px;
	border-radius: 8px;
	width: 100%;
}

.btn-book:hover {
	background: #e63e00;
}

.summary-box {
	background: #f8f9fa;
	border-radius: 10px;
	padding: 20px;
	margin-bottom: 20px;
}
</style>

</head>

<body>

	<div class="container mt-5">

		<div class="row justify-content-center">

			<div class="col-lg-8">

				<div class="booking-card">

					<h3 class="title text-center">Passenger Details</h3>

					<!-- Booking Summary -->

					<div class="summary-box">

						<p>
							<strong>Bus ID :</strong>
							<%=busId%></p>

						<p>
							<strong>Selected Seats :</strong>
							<%=seats%></p>

					</div>

					<form action="BookingsController" method="post">

						<input type="hidden" name="busId" value="<%=busId%>"> <input
							type="hidden" name="seats" value="<%=seats%>">

						<div class="row">

							<div class="col-md-6 mb-3">
								<label class="form-label">Passenger Name</label> <input
									type="text" name="name" class="form-control"
									placeholder="Enter passenger name" required>
							</div>

							<div class="col-md-3 mb-3">
								<label class="form-label">Age</label> <input type="number"
									name="age" class="form-control" placeholder="Age" required>
							</div>

							<div class="col-md-3 mb-3">
								<label class="form-label">Gender</label> <select name="gender"
									class="form-select">
									<option>Male</option>
									<option>Female</option>
									<option>Other</option>
								</select>
							</div>

						</div>

						<div class="row">

							<div class="col-md-6 mb-3">
								<label class="form-label">Phone Number</label> <input
									type="text" name="phone" class="form-control"
									placeholder="Enter phone number" required>
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Email</label> <input type="email"
									name="email" class="form-control" placeholder="Enter email"
									required>
							</div>

						</div>

						<div class="mt-4">

							<button type="submit" class="btn-book">Confirm Booking</button>

						</div>

					</form>

				</div>

			</div>

		</div>

	</div>

</body>
</html>