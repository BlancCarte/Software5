<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<title>아이디 찾기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/checkout/">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
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

<script>function FindConfirm(m){confirm(m)}; </script>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

body {
	color: #FFFFFF
}

.body1 {
	background-color: #212121;
}

}
@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
</head>

<%@ include file="NAVbar.jsp"%>

<body class="body1">
	<div class="container">
		<main>
			<div class="py-5 text-center" Style="margin-top: 100px">
				<h2>아이디 찾기</h2>
			</div>
			<div class="row g-3">
				<div class="col-sm-6 center-block"
					style="float: none; margin: 0 auto;">
					<form action="../ApplicationTier/FindIDProcess.jsp">
						<div class="row g-3">
							<div class="col-sm-12">
								<label for="NAME" class="form-label">이름</label> <input
									type="text" class="form-control" id="findName" name="findName"
									placeholder="이름" value="" required>
								<div class="invalid-feedback">이름을 입력해주세요.</div>
							</div>
							<div>
								<div class=row style="margin-bottom: 2rem;">
									<label for="PHONE" class="form-Label">휴대전화</label>
									<div class="col-4">
										<select class="form-select" id="findPhone_1"
											name="findPhone_1" required>
											<option value="">선택</option>
											<option>010</option>
											<option>011</option>
											<option>016</option>
											<option>017</option>
											<option>018</option>
											<option>019</option>
										</select>
										<div class="invalid-feedback">번호가 올바르지 않습니다.</div>
									</div>
									<div class="col-md-4">
										<input type="text" class="form-control" id="findPhone_2"
											name="findPhone_2" placeholder="" required>
										<div class="invalid-feedback">번호가 올바르지 않습니다.</div>
									</div>
									<div class="col-md-4">
										<input type="text" class="form-control" id="findPhone_3"
											name="findPhone_3" placeholder="" required>
										<div class="invalid-feedback">번호가 올바르지 않습니다.</div>
									</div>
								</div>
							</div>
						</div>
						<button class="w-100 btn btn-lg btn-success"
							style="margin-bottom: 10px;" type="submit">아이디 찾기</button>
						<div class="text - center"
							Style="text-align: center; margin: 0; padding: 0;">
							<ul class="list-inline">
								<li class="list-inline-item"><a href="FindPW.jsp"
									style="text-decoration: none; color: #5CB85C">비밀번호 찾기</a></li>
								<li class="list-inline-item"><a href="Signup.jsp"
									style="text-decoration: none; color: #5CB85C">회원가입</a></li>
							</ul>
						</div>
						<%
						if (request.getParameter("m") != null) {
							String n = request.getParameter("m");
							if (n.equals("-1"))
								out.println("<script>FindConfirm('시스템상 오류입니다.');</script>");
							else if (n.equals("1"))
								out.println("<script>FindConfirm('이름 또는 전화번호에 해당하는 ID가 없습니다.');</script>");
							else {
						%>
						<script>FindConfirm('<%="ID는 "+n+"입니다."%>');</script>
						<%
						}
						}
						%>
						<%@ include file="Footer2.jsp"%>
					</form>
				</div>
			</div>
		</main>
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