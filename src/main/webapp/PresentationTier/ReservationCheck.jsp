<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>ReservationCheck</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/checkout/">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.body1 {
	background-color: #212121;
}
}
</style>
<link href="../Design/css/form-validation.css" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css"
	rel="stylesheet" />
<link href="../Design/css/styles.css" rel="stylesheet" />
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/checkout/">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
</head>

<%@ include file="NAVbar.jsp"%>

<body class="body1" style="padding-top: 100px;">
	<main class="text-center form-signin" style="margin-top: 150px;">
		<form action="../ApplicationTier/ResChkProcess.jsp">
			<h2 style="color: white;">Reservation Check</h2>
			<br> <br>
			<div class="container">
				<div class="col-4" style="margin-left: auto; margin-right: auto;">
					<div>
						<label for="" class="form-label" style="color: white;">예약하신
							날짜</label> <input type="date" id="today" name="date" class="form-control"
							placeholder="" required> <br> <label for=""
							class="form-label" style="color: white;">예약자 전화번호 뒷4자리</label> <input
							type="text" id="pnum3" name="pnum3" class="form-control"
							placeholder="" required>
						<script>
							document.getElementById('today').valueAsDate = new Date();
						</script>
					</div>
					<br>
					<div>
						<button class="w-100 btn btn-success btn-lg " type="submit">확인</button>
					</div>
				</div>
				<br> <br> <br>
				<%@ include file="Footer3.jsp"%>
			</div>
		</form>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
		<script src="../Design/js/scripts.js"></script>
	</main>
</body>
</html>