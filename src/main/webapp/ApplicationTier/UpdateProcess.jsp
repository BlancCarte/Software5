<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정 프로세스</title>
</head>
<jsp:useBean id="Update" class="DataTier.Update" />
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String userID=(String)session.getAttribute("userID");
	String userPW = request.getParameter("userPW");
	String userName	= request.getParameter("userName");
	String userBirth  = (String)session.getAttribute("userBirth");
	String userGender  = (String)session.getAttribute("userGender");
	String userEmail	= request.getParameter("userEmail");
	String userPhone1 = request.getParameter("userPhone1");
	String userPhone2 = request.getParameter("userPhone2");
	String userPhone3 = request.getParameter("userPhone3");
	String userPhone4 = userPhone1 + '-' + userPhone2 + '-' + userPhone3;
	String userPrivAg = request.getParameter("privacyCheck");
	String userAd = request.getParameter("adCheck");
	
	Update.update(userPW, userName, userBirth, userGender, userEmail, userPhone4, userPrivAg, userAd, userID);
	response.sendRedirect("../PresentationTier/MainPage.jsp");
	%>
</body>
</html>