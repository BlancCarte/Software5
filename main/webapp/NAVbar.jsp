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
            <%
				String ID = (String)session.getAttribute("userID");
        String Root = "1234";
        String token = (String)session.getAttribute("token2");
        
        if(token != null){
			%> 
			<a class="navbar-brand js-scroll-trigger" href="MainPage2.jsp">빈센조</a> <%
		}
        else{
					%> <a class="navbar-brand js-scroll-trigger" href="MainPage.jsp">빈센조</a>
					 <%}						
								%>                
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                    
                   <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Info</a>
                   <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">                        
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="INFO.jsp" style = "color : #000000; margin-left : -25px">레스토랑 설명</a></li>
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="MAP.jsp" style = "color : #000000; margin-left : -25px">오시는길</a></li>                        
                        </ul>                        
                        </li>
                        
                   <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Menu</a>
                   <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">                        
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="MainMenu.jsp" style = "color : #000000; margin-left : -25px">MAIN</a></li>
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="SIDE.jsp" style = "color : #000000; margin-left : -25px">SIDE</a></li>   
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">Beverage</a></li>
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">Dessert</a></li>                       
                        </ul>                        
                        </li>
                        
                   <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Reservation</a>
                   <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">                        
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">예약하기</a></li>
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="#" style = "color : #000000; margin-left : -25px">예약확인</a></li>                        
                        </ul>                        
                        </li>
                       <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Signup.jsp">SignUp</a></li>
                                          
                       
        <%
				
        
        if(token != null){
			%> </li>
			<li class="nav-item"><a class="nav-link js-scroll-trigger" href="kakaoLogout.jsp">Logout</a></li> <%
		}
        else if(ID!=null){
					%> <li class="nav-item"><a class="nav-link js-scroll-trigger" href="My_Page.jsp">MyPage</a>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="Logout.jsp">Logout</a></li> <%
							if(ID.equals(Root)){
								%> <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Admin</a>
                   <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">                        
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="Statistic.jsp" style = "color : #000000; margin-left : -25px">통계</a></li>
                        <li class="dropdown-item"><a class="nav-link js-scroll-trigger" href="OrderTable.jsp" style = "color : #000000; margin-left : -25px">메뉴수정</a></li>                        
                        </ul>                        
                        </li><% 
							}
					}	
				
				else{
					%> <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Login.jsp">Login</a></li> <%
				}
				%>
				
				                     
                    </ul>
                    
                </div>
            </div>
       
        </nav>
</body>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</html> 