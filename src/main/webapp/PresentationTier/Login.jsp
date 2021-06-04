<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<title>로그인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../Design/css/bootstrap.min.css" rel="stylesheet">
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
</head>
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
	body {
		color: #FFFFFF;
	}
	.body1 {
		background-color: #212121;
	}
}
</style>
<link href="../Design/css/signin.css" rel="stylesheet">
</head>

<%@ include file="NAVbar.jsp"%>

<body class="body1">
	<main class="text-center form-signin" style="margin-top: 150px;">
		<form action="../ApplicationTier/LoginProcess.jsp">
			<h2>로그인</h2>
			<div>
				<div style="margin-bottom: 10px;">
					<label for="userID" class="visually-hidden">아이디</label> <input
						type="text" id="userID" name="userID"
						class="form-control input-lg" placeholder="아이디" required autofocus>
				</div>
				<div style="margin-bottom: 10px;">
					<label for="userPW" class="visually-hidden">비밀번호</label> <input
						type="password" id="userPW" name="userPW"
						class="form-control input-lg" placeholder="비밀번호" required>
				</div>
			</div>
			<button class="w-100 btn btn-lg btn-success"
				style="margin-bottom: 10px;" type="submit">로그인</button>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="FindID.jsp"
					style="text-decoration: none; color: #5CB85C">아이디 찾기</a></li>
				<li class="list-inline-item"><a href="FindPW.jsp"
					style="text-decoration: none; color: #5CB85C">비밀번호 찾기</a></li>
				<li class="list-inline-item"><a href="Signup.jsp"
					style="text-decoration: none; color: #5CB85C">회원가입</a></li>
			</ul>
			<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
			<a id="kakao-login-btn"></a> <a
				href="http://developers.kakao.com/logout"></a>
			<script type="text/javascript">     
   Kakao.init('13f658a5514329fd9fdcd78d0684720d');     
   Kakao.Auth.createLoginButton({	   
   container: '#kakao-login-btn',
   success: function(authObj) {             
             var token = JSON.stringify(authObj); 
             sessionStorage.setItem("token", JSON.stringify(authObj));
             var encodedToken = encodeURI(token);
             window.location.href = "MainPage.jsp?token=" + encodedToken;             
             },    
       fail: function(err) {
         alert(JSON.stringify(error));
       }
     });
   </script>
			<%@ include file="Footer3.jsp"%>
		</form>
	</main>
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
