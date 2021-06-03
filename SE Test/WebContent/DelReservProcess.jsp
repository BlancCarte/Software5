<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.ResrInfo"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="Reservation1" class="user.UpdateReserv"/>
<jsp:useBean id="Resrinfo" class="user.ResrInfo"/>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String onum2 = (String)session.getAttribute("onum1");
	int r = Reservation1.deletereserv(onum2);
	if(r==1){
		Reservation1.deleteorder(onum2);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('예약 취소되었습니다.')");
		script.println("location.href='MainPage.jsp'");
		script.println("</script>");
	}
	
%>
</body>
</html>