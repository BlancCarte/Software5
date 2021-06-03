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

	<body class="body1">
    
	 <div class="container">

      <div class="col-lg-12">
        <h1 class="mb-3" style="color:white; text-align:center; margin-top:30px; margin-bottom:20px;">Reservation</h1>
        <form class="needs-validation" action="ReservationProcess.jsp" method="post" name="fr" onsubmit="return valueCheck()">
          <div class="row g-3">
            <div class="col-sm-12">
              <label for="firstName" class="form-label" style="color:white;">성함</label>
              <input type="text" class="form-control" id="name" name="name" value="" onkeyup="nameCheck()" required>
            </div>
            <span id="alert_name"></span>
			
            <div class="col-md-4">
              <label for="country" class="form-label" style="color:white;">휴대폰 번호</label>
              <select class="form-select" name="pnum1" required>
                <option value="">앞자리</option>
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="012">012</option>
                <option value="013">013</option>
                <option value="014">014</option>
                <option value="015">015</option>
                <option value="016">016</option>
                <option value="017">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
              </select>
            </div>

            <div class="col-md-4">
              <label for="zip" class="form-label">　</label>
              <input type="text" class="form-control" id="pnum2" name="pnum2" value="" placeholder="중간 3~4자리" onkeyup="pnum2Check()" required>
              <div class="invalid-feedback">
                휴대폰 가운데자리를 입력하세요.
              </div>
              <span id="alert_pnum2"></span>
            </div>

            <div class="col-md-4">
              <label for="" class="form-label">　</label>
              <input type="text" class="form-control" id="pnum3" name="pnum3" value="" placeholder="뒷 4자리" onkeyup="pnum3Check()" required>
              <div class="invalid-feedback">
                휴대폰 끝자리를 입력하세요.
              </div>
              <span id="alert_pnum3"></span>
            </div>
            
            <div class="col-md-6">
              <label for="" class="form-label" style="color:white;">예약 날짜</label>
              <input type="date" class="form-control" id="today" min="today" name="date"></input>
                <script>
				  document.getElementById('today').valueAsDate = new Date();
				</script>
              <div class="invalid-feedback">
                예약 날짜를 선택하세요.
              </div>
            </div>
            
            <div class="col-md-6">
              <label for="" class="form-label" style="color:white;">예약 시간 (오후6시~10시까지 30분 단위로 예약 가능)</label>
              <input type="time" class="form-control" id="now" name="time" min="18:00" max="22:00" step="1800"></input>
              
              <div class="invalid-feedback">
                방문 시간을 입력하세요.
              </div>
            </div>
            
	            <div class="col-md-12">
	              <label for="" class="form-label" style="color:white;">예약 인원</label>
	              <input type="text" class="form-control" id="head" name="head" value="" placeholder="인원수 (숫자만 입력하세요)" onkeyup="headCheck()" required>
	              <span id="alert_head"></span>
	            </div>
	        </div>
	        <br>
	        <br>
            <div class="row row-cols-3">
            
					<div class="col-2"><h6 style="color:white; text-align:center;">메인 메뉴</h6></div>
					<div class="col-5" style="color:white; text-align:center; align:center;">
						<label for="" class="form-label" style="color:white;">Steak</label>
						<input type="number" style="width:50%;" name="steaknum" min="0" max="9" value="0">
					</div>
					<div class="col-5" style="color:white; text-align:center; align:center;">
						<label for="" class="form-label" style="color:white;">Pasta</label>
						<input type="number" style="width:50%;" name="pastanum" min="0" max="9" value="0">
					</div>
			</div>
			<br>
			<div class="row row-cols-3">
			    <div class="col-2"><h6 style="color:white; text-align:center;">사이드 메뉴</h6></div>
				<div class="col-5" style="color:white; text-align:center; align:center;">
					<label for="" class="form-label" style="color:white;">Salad</label>
					<input type="number" style="width:50%;" name="saladnum" min="0" max="9" value="0">
				</div>
				<div class="col-5" style="color:white; text-align:center; align:center;">
					<label for="" class="form-label" style="color:white;">Chips</label>
					<input type="number" style="width:50%;" name="chipsnum" min="0" max="9" value="0">
				</div>
			</div>
			<br>
			<div class="row row-cols-3">
				<div class="col-2"><h6 style="color:white; text-align:center;">음료</h6></div>
				<div class="col-5" style="color:white; text-align:center; align:center;">
					<label for="" class="form-label" style="color:white;">Red&nbsp;&nbsp;</label>
					<input type="number" style="width:50%;" name="sodanum"  min="0" max="9" value="0">
				</div>
				<div class="col-5" style="color:white; text-align:center; align:center;">
					<label for="" class="form-label" style="color:white;">White</label>
					<input type="number" style="width:50%;" name="juicenum" min="0" max="9" value="0">
				</div>
			</div>
			<br>
			<div class="row row-cols-3">
				<div class="col-2"><h6 style="color:white; text-align:center;">디저트</h6></div>
				<div class="col-5" style="color:white; text-align:center; align:center;">
					<label for="" class="form-label" style="color:white;">Cake&nbsp;</label>
					<input type="number" style="width:50%;" name="chocolatenum" min="0" max="9" value="0">
				</div>
				<div class="col-5" style="color:white; text-align:center; align:center;">
					<label for="" class="form-label" style="color:white;">Tea&nbsp;&nbsp;</label>
					<input type="number" style="width:50%;" name="cheesenum" min="0" max="9" value="0">
				</div>
				<br>
				<br>
	        </div>
				<h6 style="color:white; text-align:left;">(모든 메뉴는 최대 9개 주문 가능합니다.)</h6>
          <hr class="" style="background-color:white; border:0px; height:2px;">

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address" required>
            <label class="form-check-label" for="same-address" style="color:white;">개인정보 수집에 동의합니다</label>
            <div class="invalid-feedback">
              개인정보 수집에 동의하셔야 예약이 가능합니다.
            </div>
          </div>
          
              
          <br>
          
		  <div align=center>
		    <button class="w-100 btn btn-primary btn-lg" type="submit">예약하기</button>
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
