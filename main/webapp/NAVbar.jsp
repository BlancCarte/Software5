<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
    
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="MainPage.jsp">빈센조</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                    
                   <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">INFO</a>
                   <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">                        
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">레스토랑 설명</a></li>
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">오시는길</a></li>                        
                        </ul>                        
                        </li>
                        
                   <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">MENU</a>
                   <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">                        
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">MAIN</a></li>
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">SIDE</a></li>   
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">Beverage</a></li>
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">Dessert</a></li>                       
                        </ul>                        
                        </li>
                        
                   <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">예약</a>
                   <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">                        
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">예약하기</a></li>
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">예약확인</a></li>                        
                        </ul>                        
                        </li>
                       <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Signup.jsp">회원가입</a></li> 
                        <%
				String ID = (String)session.getAttribute("userID");
        String Root = "1234";
				
				if(ID!=null){
					%> <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Logout.jsp">로그아웃</a></li> <%
							if(ID.equals(Root)){
								%> <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">관리자기능</a>
                   <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">                        
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">통계</a></li>
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">메뉴수정</a></li>                        
                        </ul>                        
                        </li><% 
							}
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