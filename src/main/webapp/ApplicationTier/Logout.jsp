<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>로그아웃 프로세스</title>
</head>
<body>
	<%
session.removeAttribute( "userID" );
response.sendRedirect("../PresentationTier/MainPage.jsp");
%>
</body>
</html>