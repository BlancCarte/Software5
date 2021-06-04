<%@page import="DTO.Dish"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>예약</title>
</head>
<jsp:useBean id="Reservation1" class="DataTier.Reservation"/>
<body>
<% 
   request.setCharacterEncoding("utf-8");
   String name = request.getParameter("name");
   String pnum1 = request.getParameter("pnum1");
   String pnum2 = request.getParameter("pnum2");
   String pnum3 = request.getParameter("pnum3");
   String pnum = pnum1+"-"+pnum2+"-"+pnum3;
   String date = request.getParameter("date");
   String time = request.getParameter("time");
   String head = request.getParameter("head");
   int head1 = Integer.parseInt(head);
   String seat = "";
   int n = (int)(Math.random()*100);   
   String r = "";
   if(n%3==0) r="A";
   else if(n%3==1) r="B";
   else if(n%3==2) r="C";
   if(head1>=1 && head1<=2){
	   seat = "2" + "-" + r;
   }
   else if(head1>=3 && head1<=4){
	   seat = "4" + "-" + r;
   }
   else if(head1>=5 && head1<=8){
	   seat = "8" + "-" + r;
   }
   
   
   String steaknum = request.getParameter("steaknum");
   int steaknum1 = Integer.parseInt(steaknum);
   String pastanum = request.getParameter("pastanum");
   int pastanum1 = Integer.parseInt(pastanum);
   String saladnum = request.getParameter("saladnum");
   int saladnum1 = Integer.parseInt(saladnum);
   String chipsnum = request.getParameter("chipsnum");
   int chipsnum1 = Integer.parseInt(chipsnum);
   String sodanum = request.getParameter("sodanum");
   int sodanum1 = Integer.parseInt(sodanum);
   String juicenum = request.getParameter("juicenum");
   int juicenum1 = Integer.parseInt(juicenum);
   String chocolatenum = request.getParameter("chocolatenum");
   int chocolatenum1 = Integer.parseInt(chocolatenum);
   String cheesenum = request.getParameter("cheesenum");
   int cheesenum1 = Integer.parseInt(cheesenum);
   int price = steaknum1*1000 + pastanum1*800 + saladnum1*600 + chipsnum1*500 + sodanum1*100 + juicenum1*100 + chocolatenum1*300 + cheesenum1*300;
   String onum = date + "-" + pnum3;
   
   
   Reservation1.reserv(onum, name, pnum, date, time, seat, head, price);	
   
   int[] dishnum = {steaknum1,pastanum1,saladnum1,chipsnum1,sodanum1,juicenum1,chocolatenum1,cheesenum1};
   for(int i=0; i<=7;i++){
	   if(dishnum[i]>=1)
		   Reservation1.order(onum, i+1, dishnum[i]);
   }
   
   response.sendRedirect("../PresentationTier/MainPage.jsp");
 %>
 </body>