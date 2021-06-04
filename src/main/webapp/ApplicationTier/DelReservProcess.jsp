<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="DTO.ResrInfo"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약정보삭제 프로세스</title>
</head>
<jsp:useBean id="Reservation1" class="DataTier.UpdateReserv"/>
<jsp:useBean id="Resrinfo" class="DTO.ResrInfo"/>
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
		script.println("location.href='../PresentationTier/MainPage.jsp'");
		script.println("</script>");
	}
%>
</body>
</html>