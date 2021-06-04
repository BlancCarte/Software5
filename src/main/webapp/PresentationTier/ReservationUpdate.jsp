<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="DataTier.UpdateReserv"%>
<%@page import="DataTier.Check"%>
<%@page import="DTO.ResrInfo"%>
<%
ResrInfo user= (ResrInfo)session.getAttribute("key");
String name0 = user.getName();
session.setAttribute("name1",name0);
String pnum0 = user.getPnum();
session.setAttribute("pnum0",pnum0);
String pnum1 = pnum0.substring(0,3);
session.setAttribute("pnum1",pnum1);
String pnum2 = pnum0.substring(4,8);
session.setAttribute("pnum2",pnum2);
String pnum3 = pnum0.substring(9,13);
session.setAttribute("pnum3",pnum3);
String date0 = user.getDate();
session.setAttribute("date0",date0);
String time0 = user.getTime();
session.setAttribute("time0",time0);
String head0 = user.getHead();
session.setAttribute("head0",head0);
String onum1 = user.getOnum();
session.setAttribute("onum1",onum1);
%>
<html>

<head>
<title>ReservationUpdate</title>
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
<script>
		function nameCheck() {
	        var obj = document.fr;
	        var name1 = document.getElementById("name").value;
	        var regex = /^[가-힣]{2,4}$/;
	        
	        if(obj.name.value == ''){
	        	document.getElementById("alert_name").innerHTML=('<span style="color: red;">이름을 입력하세요.</span>');  
	        	return;
	        }
	        else if((regex.test(name1))==false) {
	            document.getElementById("alert_name").innerHTML=('<span style="color: red;">올바른 이름을 입력하세요.</span>');            
	            return;
	        } 
	        else {
	            document.getElementById("alert_name").innerHTML=('<span style="color: green;">입력되었습니다.</span>');    
	        }
	    }
		function pnum2Check() {
	        var obj = document.fr;              
	        var phone2 = document.getElementById("pnum2").value;  
	        var regex = /\d{3,4}/;
	        
	      
	        if(obj.pnum2.value == '') {
	            document.getElementById("alert_pnum2").innerHTML=('<span style="color: red;">전화번호 가운데 자리를 입력하세요.</span>');            
	            return;
	        } 
	        else if((regex.test(phone2))==false){
	        	document.getElementById("alert_pnum2").innerHTML=('<span style="color: red;">잘못된 형식입니다.</span>'); 
	        	return;
	        }
	        else {
	            document.getElementById("alert_pnum2").innerHTML=('<span style="color: green;">입력되었습니다.</span>');    
	        }
	    }
	    function pnum3Check() {
	        var obj = document.fr;              
	        var phone3 = document.getElementById("pnum3").value;  
	        var regex = /\d{4}/;
	        
	      
	        if(obj.pnum3.value == '') {
	            document.getElementById("alert_pnum3").innerHTML=('<span style="color: red;">전화번호 마지막 자리를 입력하세요.</span>');            
	            return;
	        } 
	        else if((regex.test(phone3))==false){
	        	document.getElementById("alert_pnum3").innerHTML=('<span style="color: red;">잘못된 형식입니다.</span>'); 
	        	return;
	        }
	        else {
	            document.getElementById("alert_pnum3").innerHTML=('<span style="color: green;">입력되었습니다.</span>');    
	        }
	    }
	    function headCheck() {
	        var obj = document.fr;              
	        var headC = document.getElementById("head").value;  
	        var regex = /^[1-8]{1}$/;
	        
	      
	        if(obj.head.value == '') {
	            document.getElementById("alert_head").innerHTML=('<span style="color: red;">인원수를 입력하세요.</span>');            
	            return;
	        } 
	        else if((regex.test(headC))==false){
	        	document.getElementById("alert_head").innerHTML=('<span style="color: red;">9명 이상의 단체 예약은 전화로 가능합니다.</span>'); 
	        	return;
	        }
	        else {
	            document.getElementById("alert_head").innerHTML=('<span style="color: green;">입력되었습니다.</span>');    
	        }
	    }
		</script>

<link href="../Design/css/form-validation.css" rel="stylesheet">
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

<body class="body1" style="padding-top: 150px;">
	<div class="container">
		<div class="col-lg-12">
			<h1 class="mb-3"
				style="color: white; text-align: center; margin-top: 30px; margin-bottom: 20px;">Reservation
				Change</h1>
			<form class="needs-validation" action="../ApplicationTier/ResUpdProcess.jsp"
				method="post" name="fr">
				<div class="row g-3">
					<div class="col-sm-12">
						<label for="firstName" class="form-label" style="color: white;">성함</label>
						<input type="text" class="form-control" id="name" name="name"
							placeholder="${name1}" disabled>
					</div>
					<div>
					<div class="row">
					<label for="" class="form-label" style="color: white;">휴대폰
							번호</label>
					<div class="col-md-4">
						 <input type="text" class="form-control" id="pnum1"
							name="pnum1" placeholder="${pnum1}" disabled>
					</div>
					<div class="col-md-4">
						 <input type="text"
							class="form-control" id="pnum2" name="pnum2"
							placeholder="${pnum2}" disabled> <span id="alert_pnum2"></span>
					</div>
					<div class="col-md-4">
						 <input type="text"
							class="form-control" id="pnum3" name="pnum3"
							placeholder="${pnum3}" disabled> <span id="alert_pnum3"></span>
					</div>
					</div>
					</div>
					<div class="col-md-6">
						<label for="firstName" class="form-label" style="color: white;">예약하신
							날짜</label> <input type="text" class="form-control" id="date1"
							name="date1" placeholder="${date0}" disabled>
					</div>
					<div class="col-md-6">
						<label for="firstName" class="form-label" style="color: white;">예약하신
							시간</label> <input type="text" class="form-control" id="time1"
							name="time1" placeholder="${time0}" disabled>
					</div>
					<div class="col-md-6">
						<label for="" class="form-label" style="color: white;">변경하실
							날짜</label> <input type="date" class="form-control" id="date" name="date"
							required></input>
					</div>
					<div class="col-md-6">
						<label for="" class="form-label" style="color: white;">변경하실
							시간 (오후6시~10시까지 30분 단위로 예약 가능)</label> <input type="time"
							class="form-control" id="time" name="time" min="18:00"
							max="22:00" step="1800" required></input>
					</div>
					<div class="col-md-12">
						<label for="" class="form-label" style="color: white;">예약
							인원 (변동이 없을 시 같은 인원으로 한 번 더 입력해주세요)</label> <input type="text"
							class="form-control" id="head" name="head" value=""
							placeholder="${head0}" onkeyup="headCheck()" required> <span
							id="alert_head"></span>
					</div>
				</div>
				<br> <br>
				<div class="row row-cols-3">
					<div class="col-2">
						<h6 style="color: white; text-align: center;">메인 메뉴</h6>
					</div>
					<div class="col-5"
						style="color: white; text-align: center; align: center;">
						<label for="" class="form-label" style="color: white;">Steak</label>
						<input type="number" style="width: 50%;" name="steaknum" min="0"
							max="9" value="0">
					</div>
					<div class="col-5"
						style="color: white; text-align: center; align: center;">
						<label for="" class="form-label" style="color: white;">Pasta</label>
						<input type="number" style="width: 50%;" name="pastanum" min="0"
							max="9" value="0">
					</div>
				</div>
				<br>
				<div class="row row-cols-3">
					<div class="col-2">
						<h6 style="color: white; text-align: center;">사이드 메뉴</h6>
					</div>
					<div class="col-5"
						style="color: white; text-align: center; align: center;">
						<label for="" class="form-label" style="color: white;">Salad</label>
						<input type="number" style="width: 50%;" name="saladnum" min="0"
							max="9" value="0">
					</div>
					<div class="col-5"
						style="color: white; text-align: center; align: center;">
						<label for="" class="form-label" style="color: white;">Chips</label>
						<input type="number" style="width: 50%;" name="chipsnum" min="0"
							max="9" value="0">
					</div>
				</div>
				<br>
				<div class="row row-cols-3">
					<div class="col-2">
						<h6 style="color: white; text-align: center;">음료</h6>
					</div>
					<div class="col-5"
						style="color: white; text-align: center; align: center;">
						<label for="" class="form-label" style="color: white;">Red&nbsp;&nbsp;</label>
						<input type="number" style="width: 50%;" name="sodanum" min="0"
							max="9" value="0">
					</div>
					<div class="col-5"
						style="color: white; text-align: center; align: center;">
						<label for="" class="form-label" style="color: white;">White</label>
						<input type="number" style="width: 50%;" name="juicenum" min="0"
							max="9" value="0">
					</div>
				</div>
				<br>
				<div class="row row-cols-3">
					<div class="col-2">
						<h6 style="color: white; text-align: center;">디저트</h6>
					</div>
					<div class="col-5"
						style="color: white; text-align: center; align: center;">
						<label for="" class="form-label" style="color: white;">Cake&nbsp;</label>
						<input type="number" style="width: 50%;" name="chocolatenum"
							min="0" max="9" value="0">
					</div>
					<div class="col-5"
						style="color: white; text-align: center; align: center;">
						<label for="" class="form-label" style="color: white;">Tea&nbsp;&nbsp;</label>
						<input type="number" style="width: 50%;" name="cheesenum" min="0"
							max="9" value="0">
					</div>
					<br> <br>
				</div>
				<h6 style="color: white; text-align: left;">(모든 메뉴는 최대 9개 주문
					가능합니다.)</h6>
				<hr class=""
					style="background-color: white; border: 0px; height: 2px;">
				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="same-address"
						required> <label class="form-check-label"
						for="same-address" style="color: white;">개인정보 수집에 동의합니다</label>
					<div class="invalid-feedback">개인정보 수집에 동의하셔야 예약이 가능합니다.</div>
				</div>
				<br>
				<div align=center>
					<button class="btn btn-success btn-lg" type="submit"
						style="width: 49.75%;">예약수정</button>
					<button class="btn btn-success btn-lg" type="button"
						onclick="location.href='../ApplicationTier/DelReservProcess.jsp'"
						style="width: 49.75%;">예약취소</button>
				</div>
			</form>
		</div>
		<%@ include file="Footer2.jsp"%>
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

</html>