<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="DTO.ResrInfo"%>
<%@page import="java.io.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>예약확인 프로세스</title>
</head>
<jsp:useBean id="Reservation1" class="DataTier.UpdateReserv"/>
<jsp:useBean id="Reservation2" class="DataTier.Check"/>
<jsp:useBean id="Resrinfo" class="DTO.ResrInfo"/>
<body>
<% 
	request.setCharacterEncoding("utf-8");
	String date = request.getParameter("date");
	String pnum3 = request.getParameter("pnum3");
	String onum = date + "-" + pnum3;
	

	if(Reservation2.check(onum)==1){
		ResrInfo user = Reservation1.resrinfo(onum);
		String name0 = user.getName();		
		session.setAttribute("key", user);
		response.sendRedirect("../PresentationTier/ReservationUpdate.jsp");
	}
	
	else{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('예약 정보가 없습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
 %>
 </body>