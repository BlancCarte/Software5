<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@page import="java.io.*"%>
<%@ include file="NAVbar.jsp"%>
<style>
h2 {
	text-align: center;
}
.box {
	border-radius: 70%;
}
</style>

<head>
<title>메인페이지</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
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
</head>

<body id="page-top">
	<header class="masthead">
		<div class="container h-100">
			<div
				class="row h-100 align-items-center justify-content-center text-center">
				<div class="col-lg-10 align-self-end">
					<h1 class="text-uppercase text-white font-weight-bold">Vincenzo
						Restaurant</h1>
					<hr class="divider my-4" />
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75 font-weight-light mb-5">
						소프트웨어공학 텀프로젝트 5조<br />201611851 정유성<br />201714029 천진우<br />201717263
						김정락<br />201811190 백승연
					</p>
					<div>
						<a class="btn btn-primary btn-xl js-scroll-trigger"
							href="Reservation.jsp">예약하기</a> &nbsp; &nbsp; &nbsp; &nbsp; <a
							class="btn btn-primary btn-xl js-scroll-trigger" href="Check.jsp">예약확인</a>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="row" style="padding-top: 100px; height: 50%;">
		<div class="col-lg-4">
			<div style="cursor: pointer;" onclick="location.href='Info.jsp'">
				<img class="d-block mx-auto mb-4"
					src="../Design/image/Info_Icon.jpg" alt="" width="300" height="200"
					style="border-radius: 70%;">
			</div>
			<h2>Info</h2>
		</div>
		<div class="col-lg-4">
			<div style="cursor: pointer;" onclick="location.href='MainMenu.jsp'">
				<img class="d-block mx-auto mb-4"
					src="../Design/image/Menu_Icon.jpg" alt="" width="300" height="200"
					style="border-radius: 70%;">
			</div>
			<h2>Menu</h2>
		</div>
		<div class="col-lg-4">
			<div style="cursor: pointer;"
				onclick="location.href='Reservation.jsp'">
				<img class="d-block mx-auto mb-4"
					src="../Design/image/Reservation_Icon.jpg" alt="" width="300"
					height="200" style="border-radius: 70%;">
			</div>
			<h2>Reservation</h2>
		</div>
	</div>
	<%@ include file="Footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
	<script src="../Design/js/scripts.js"></script>
</body>
</html>