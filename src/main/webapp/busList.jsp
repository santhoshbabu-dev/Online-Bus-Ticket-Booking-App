<%@ page import="java.util.List"%>
<%@ page import="model.BusModel"%>

<%
List<BusModel> buses = (List<BusModel>) request.getAttribute("busList");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Available Buses</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #f4f6f9;
	font-family: Arial;
}

.bus-card {
	border-radius: 12px;
	box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
	padding: 20px;
	background: white;
}

.bus-name {
	font-size: 20px;
	font-weight: bold;
}

.time {
	font-size: 18px;
	font-weight: 600;
}

.price {
	font-size: 22px;
	color: #ff4b00;
	font-weight: bold;
}

.book-btn {
	background: #ff4b00;
	color: white;
	border: none;
}

.book-btn:hover {
	background: #e63e00;
}
</style>

</head>

<body>

	<div class="container mt-4">

		<h3 class="mb-4">Available Buses</h3>

		<%
		if (buses != null && buses.size() > 0) {
			for (BusModel bus : buses) {
		%>

		<div class="bus-card row align-items-center">

			<div class="col-md-3">
				<div class="bus-name"><%=bus.getBusname()%></div>
				<div class="text-muted">AC Sleeper</div>
			</div>

			<div class="col-md-3 text-center">
				<div class="time"><%=bus.getDepaturetime()%></div>
				<div class="text-muted"><%=bus.getSource()%></div>
			</div>

			<div class="col-md-3 text-center">
				<div class="time"><%=bus.getArrivaltime()%></div>
				<div class="text-muted"><%=bus.getDestination()%></div>
			</div>

			<div class="col-md-1 text-center">
				<div class="price">
					&#8377;<%=bus.getPrice()%></div>
			</div>

			<div class="col-md-2 text-end">
				<form action="SeatController" method="post">
					<input type="hidden" name="busId" value="<%=bus.getBusId()%>">
					<button type="submit" class="btn book-btn">Select Seat</button>
				</form>
			</div>

		</div>

		<%
		}
		} else {
		%>

		<div class="alert alert-warning">No buses found for selected
			route.</div>

		<%
		}
		%>

	</div>

</body>
</html>