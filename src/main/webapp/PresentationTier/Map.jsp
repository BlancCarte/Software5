<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>오시는 길</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link href="../Design/css/styles1.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<meta charset="utf-8" />
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
</head>

<%@ include file="NAVbar.jsp"%>

<body style="background-color: #212121; padding-top: 100px;">
	<div class="container mt-5" align="center" style="height: 95%;">
		<div>
			<div class="col-lg-8">
				<article>
					<header class="mb-4">
						<h1 style="color: white;">Welcome to Restaurant!</h1>
						<hr>
					</header>
					<figure class="mb-4">
						<div class="card mb-4">
							<div id="map" style="width: 100%; height: 350px;"></div>
							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=13f658a5514329fd9fdcd78d0684720d"></script>
							<script>
								var mapContainer = document
										.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									center : new kakao.maps.LatLng(37.545551,
											127.042555), // 지도의 중심좌표
									level : 3
								// 지도의 확대 레벨
								};

								var map = new kakao.maps.Map(mapContainer,
										mapOption); // 지도를 생성합니다

								// 마커가 표시될 위치입니다 
								var markerPosition = new kakao.maps.LatLng(
										37.545551, 127.042555);

								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									position : markerPosition
								});

								// 마커가 지도 위에 표시되도록 설정합니다
								marker.setMap(map);

								// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
								// marker.setMap(null);
							</script>
						</div>
					</figure>
					<section class="mb-5">
						<span style="color: white;">
							<hr color="white">
							<p>서울 성동구 서울숲2길 32-14 갤러리아 포레 102동 203호</p>
							<p>서울특별시 성동구 성수동1가 685-696 갤러리아 포레 102동 203호</p>
							<p>지하철 이용시 | 2호선 뚝섬역 5번 출구</p>
							<p>자가용 이용시 주차장 안내 | 주차장 입구 갤러리아 포레에 위치하고 있습니다.</p>

							<p>전화번호 | 02-1234-1234</p>
							<p>운영시간 | 10:00~22:00</p>
						</span>
					</section>
				</article>
			</div>
		</div>
	</div>
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
</body>

<%@ include file="Footer.jsp"%>
</html>