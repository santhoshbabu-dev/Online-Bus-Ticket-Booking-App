<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Booking Successful</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #f4f6f9;
	font-family: Arial;
}

.ticket-card {
	background: white;
	padding: 40px;
	border-radius: 15px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
	text-align: center;
}
</style>

</head>

<body>

	<div class="container mt-5">

		<div class="row justify-content-center">

			<div class="col-md-6">

				<div class="ticket-card">

					<h2 class="text-success">Booking Successful 🎉</h2>

					<hr>

					<p>
						<b>Passenger Name:</b>
						<%=request.getAttribute("name")%></p>

					<p>
						<b>Bus ID:</b>
						<%=request.getAttribute("busId")%></p>

					<p>
						<b>Seats:</b>
						<%=request.getAttribute("seats")%></p>

					<br> <a href="index.jsp" class="btn btn-primary">Back to
						Home</a>

				</div>

			</div>

		</div>

	</div>

</body>
</html>