<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="MainPage.jsp">빈센조</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">예약하기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">예약확인</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">메뉴확인</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">약도</a></li>
                       <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Signup.jsp">회원가입</a></li> 
                        <%
				String ID = (String)session.getAttribute("userID");
				
				if(ID!=null){
					%> <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">로그아웃</a></li> <%
					}
				else{
					%> <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Login.jsp">로그인</a></li> <%
				}
				%>
				                      
                    </ul>
                </div>
            </div>
       
        </nav>
</body>

</html> 