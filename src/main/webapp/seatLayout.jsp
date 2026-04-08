<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Select Seats</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #f4f6f9;
	font-family: Arial;
}

.seat {
	width: 45px;
	height: 45px;
	background: #ddd;
	margin: 5px;
	text-align: center;
	line-height: 45px;
	cursor: pointer;
	border-radius: 6px;
	display: inline-block;
}

.seat:hover {
	background: #28a745;
	color: white;
}

.selected {
	background: #ff4b00;
	color: white;
}

.driver {
	font-weight: bold;
	margin-bottom: 20px;
}

.seat-row {
	margin-bottom: 10px;
}
</style>

</head>

<body>

	<div class="container mt-5">

		<h3>Select Your Seat</h3>

		<div class="driver">Driver</div>

		<div class="seat-row">
			<div class="seat">1</div>
			<div class="seat">2</div>
			&nbsp;&nbsp;&nbsp;
			<div class="seat">3</div>
			<div class="seat">4</div>
		</div>

		<div class="seat-row">
			<div class="seat">5</div>
			<div class="seat">6</div>
			&nbsp;&nbsp;&nbsp;
			<div class="seat">7</div>
			<div class="seat">8</div>
		</div>

		<div class="seat-row">
			<div class="seat">9</div>
			<div class="seat">10</div>
			&nbsp;&nbsp;&nbsp;
			<div class="seat">11</div>
			<div class="seat">12</div>
		</div>

		<br>

		<form action="PassengerController" method="post">

			<input type="hidden" name="busId"
				value="<%=request.getAttribute("busId")%>"> <input
				type="hidden" id="selectedSeats" name="seats"> <br>

			<button type="submit" class="btn btn-success">Proceed</button>

		</form>

	</div>

	<script>

let seats = document.querySelectorAll(".seat");

seats.forEach(seat => {
    seat.addEventListener("click", function(){
        seat.classList.toggle("selected");
    });
});

</script>

</body>
</html>