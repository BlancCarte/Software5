<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.ResrInfo"%>
<%@ page import="user.Reservation"%>
<%@page import="java.util.*"%>
<%ResrInfo info= (ResrInfo)session.getAttribute("info");%>
<% 
String name = info.getName();
String pnum1 = info.getPnum1();
String pnum2 = info.getPnum2();
String pnum3 = info.getPnum3();
String date = info.getDate();
String time = info.getTime();
String head = info.getHead();
String steaknum = info.getSteaknum();
String pastanum = info.getPastanum();
String saladnum = info.getSaladnum();
String chipsnum = info.getChipsnum();
String sodanum = info.getSodanum();
String juicenum = info.getJuicenum();
String chocolatenum = info.getChocolatenum();
String cheesenum = info.getCheesenum();
%>
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
    	</style>
		
		<script>
		function valueCheck(){
			var nameRule = /^[가-힣]{2,4}$/; //이름 정규식
			var pnum2Rule = /\d{3,4}/; // 핸드폰 가운데자리 정규식
			var pnum3Rule = /\d{4}/; // 핸드폰 마지막자리 정규식
			
			var name = document.getElementById("name").value;
			var pnum2 = document.getElementById("pnum2").value;
			var pnum3 = document.getElementById("pnum3").value;
			
			var obj = document.fr;
			
			if((nameRule.test(name))==false) {
            	alert("올바른 이름을 입력하세요.");
                return false;
			}
			else if((pnum2Rule.test(pnum2))==false){
            	alert("핸드폰 두번째 자리를 다시 확인해주세요"); 
            	return false;
            }
            
            else if((pnum3Rule.test(pnum3))==false){
            	alert("핸드폰 세번째 자리를 다시 확인해주세요"); 
            	return false;
            }
            else{
            	alert("예약이 완료되었습니다.");
            	return true;
            }
		}
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
		
		<link href="form-validation.css" rel="stylesheet">
    	
	</head>

	<body class="bg-dark">
    
	 <div class="container">

      <div class="col-lg-12">
        <h1 class="mb-3" style="color:white; text-align:center; margin-top:30px; margin-bottom:20px;">Reservation</h1>
        <form class="needs-validation" action="ReservationPro.jsp" method="post" name="fr" onsubmit="return valueCheck()">
          <div class="row g-3">
            <div class="col-sm-12">
              <label for="firstName" class="form-label" style="color:white;">성함</label>
              <input type="text" class="form-control" id="name" name="name" placeholder="${name}" disabled>
            </div>
			
            <div class="col-md-4">
              <label for="" class="form-label" style="color:white;">휴대폰 번호</label>
              <input type="text" class="form-control" id="pnum1" name="pnum1" placeholder="${pnum1}" disabled>
            </div>

            <div class="col-md-4">
              <label for="" class="form-label">　</label>
              <input type="text" class="form-control" id="pnum2" name="pnum2" placeholder="${pnum2}" disabled>
              <span id="alert_pnum2"></span>
            </div>

            <div class="col-md-4">
              <label for="" class="form-label">　</label>
              <input type="text" class="form-control" id="pnum3" name="pnum3" placeholder="${pnum3}" disabled>
              <span id="alert_pnum3"></span>
            </div>
            
            <div class="col-md-6">
              <label for="" class="form-label" style="color:white;">예약 날짜</label>
              <input type="date" class="form-control" id="today" min="today" name="date"></input>
                <script>
				  document.getElementById('today').valueAsDate = new Date();
				</script>
            </div>
            
            <div class="col-md-6">
              <label for="" class="form-label" style="color:white;">예약 시간 (오후6시~10시까지 30분 단위로 예약 가능)</label>
              <input type="time" class="form-control" id="now" name="time" min="18:00" max="22:00" step="1800"></input>
            </div>
            
            
            <div class="col-md-12">
              <label for="" class="form-label">　</label>
              <input type="text" class="form-control" id="head" name="head" value="" placeholder="인원수 (숫자만 입력하세요)" onkeyup="headCheck()" required>
              <span id="alert_head"></span>
            </div>
            
			<h6 style="color:white; margin-bottom:-10px;">메인 메뉴</h6>
			<div class="col-md-2" style="color:white;">
				Steak&nbsp;&nbsp;
				<input type="number" name="steaknum" min="0" max="9" value="0">
			</div>
			<div class="col-md-2" style="color:white;">
				Pasta&nbsp;&nbsp;
				<input type="number" name="pastanum" min="0" max="9" value="0">
			</div>
		    <h6 style="color:white; margin-bottom:-10px;">사이드 메뉴</h6>
			<div class="col-md-2" style="color:white;">
				Salad&nbsp;&nbsp;
				<input type="number" name="saladnum" min="0" max="9" value="0">
			</div>
			<div class="col-md-2" style="color:white;">
				Chips&nbsp;&nbsp;
				<input type="number" name="chipsnum" min="0" max="9" value="0">
			</div>
			<h6 style="color:white; margin-bottom:-10px;">음료</h6>
			<div class="col-md-2" style="color:white;">
				Soda&nbsp;&nbsp;
				<input type="number" name="sodanum"  min="0" max="9" value="0">
			</div>
			<div class="col-md-2" style="color:white;">
				Juice&nbsp;&nbsp;
				<input type="number" name="juicenum" min="0" max="9" value="0">
			</div>
			<h6 style="color:white; margin-bottom:-10px;">디저트</h6>
			<div class="col-md-3" style="color:white;">
				Chocolate Cake&nbsp;&nbsp;
				<input type="number" name="chocolatenum" min="0" max="9" value="0">
			</div>
			<div class="col-md-3" style="color:white;">
				Cheese Cake&nbsp;&nbsp;
				<input type="number" name="cheesenum" min="0" max="9" value="0">
			</div>
			<h6 style="color:white; margin-bottom:-10px;">(모든 메뉴는 최대 9개 주문 가능합니다.)</h6>
          </div>

          <hr class="my-4" style="background-color:white; border:0px; height:2px;">

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address" required>
            <label class="form-check-label" for="same-address" style="color:white;">개인정보 수집에 동의합니다</label>
            <div class="invalid-feedback">
              개인정보 수집에 동의하셔야 예약 수정이 가능합니다.
            </div>
          </div>
          
              
          <br>
          
          <div align=center>
		    <button class="btn btn-primary btn-lg" type="submit" style="width:49.75%;">예약수정</button>
		    <button class="btn btn-primary btn-lg" type="submit" style="width:49.75%;">예약취소</button>
		  </div>
		  
        </form>
      </div>
    </div>

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
  </body>


</html>