<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
    	<meta name="description" content="">
    	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    	<meta name="generator" content="Hugo 0.83.1">
    	<title>Reservation</title>

    	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" 
			rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    	<!-- Bootstrap core CSS -->
		<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    	<style>
      		.bd-placeholder-img {
        		font-size: 1.125rem;
        		text-anchor: middle;
        		-webkit-user-select: none;
        		-moz-user-select: none;
        		user-select: none;
      		}

      		@media (min-width: 768px) {
        		.bd-placeholder-img-lg {
          		font-size: 3.5rem;
        	}
      	}
      	.body1{
			background-color : #212121;}
		}
    	</style>

</head>

<body class="body1">
	<main class="text-center form-signin" style="margin-top:150px;">
		<form action="ResrChkProcess.jsp">
			<h2 style="color:white;">예약정보 확인</h2>
			<br>
			<br>
			<div class="container">				
			  <div class="col-lg-12">
			    <div class="col-md-6" style="width:49.5%; float:right;">
					<label for="" class="form-label" style="color:white;">예약자 전화번호 뒷4자리</label>
					<input type="text" id="pnum3" name="pnum3" class="form-control" placeholder="" required>
				</div>
				<div class="col-md-6" style="width:49.5%;">
					<label for="" class="form-label" style="color:white;">예약하신 날짜</label>
					<input type="date" id="today" name="date" class="form-control" placeholder="" required>
						<script>
				  	  	  document.getElementById('today').valueAsDate = new Date();
						</script>
				</div>
				
				<br>
				<div>
					<button class="w-100 btn btn-primary btn-lg" type="submit">확인</button>
				</div>
			  </div>
			</div>

		</form>
		<footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2021 빈센조</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
		<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      <script src="form-validation.js"></script>
	</main>

</body>

</html>
