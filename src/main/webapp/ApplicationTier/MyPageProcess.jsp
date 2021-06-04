<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="DTO.User"%>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정 프로세스</title>
</head>
<body>

	<jsp:useBean id="loginCheck" class="DataTier.Login" />
	<jsp:useBean id="Update" class="DataTier.Update" />
	<jsp:useBean id="User" class="DTO.User" />
	<%
	request.setCharacterEncoding("utf-8");
	String ID = (String)session.getAttribute("userID");		
	String PW = request.getParameter("userPW");

	int m = loginCheck.idCheck(ID, PW);
	if (m == 1) {	
		
		User user=Update.userInfo(ID);	
		session.setAttribute("user", user);		
		response.sendRedirect("../PresentationTier/UserInformation.jsp");
		
	}

	else if (m == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back()");
		script.println("</script>");

	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입을 진행해주세요')");
		script.println("history.back()");
		script.println("</script>");
	}
	%>
</body>
</html>