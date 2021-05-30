<%@page import="user.GetOrderList"%>
<%@page import="user.OrderList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Tables - SB Admin</title>
<link href="css/styles.css" rel="stylesheet" />
<link
   href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
   rel="stylesheet" crossorigin="anonymous" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- Third party plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="canonical"
				href="https://getbootstrap.com/docs/5.0/examples/checkout/">
				
</head>

<%@ include file="NAVbar.jsp"%>
<body class="sb-nav-fixed">
   <main>
      <div class="container-fluid" style="background-color: #212121; padding-top:75px;">
         <h1 class="mt-4" style="color: aliceblue;">예약 정보 테이블</h1>
         <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="Statistic.jsp">Statistic</a></li>
            <li class="breadcrumb-item active">Tables</li>
         </ol>
         <div class="card mb-4">
            <div class="card-header">
               <i class="fas fa-table mr-1"></i> 고객 예약 정보 테이블
            </div>
            <div class="card-body">
               <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable" width="100%"
                     cellspacing="0">
                     <thead>
                        <tr>
                           <th>주문 번호</th>
                           <th>이름</th>
                           <th>전화번호</th>
                           <th>인원수</th>
                           <th>날짜</th>
                           <th>테이블 번호</th>
                        </tr>
                     </thead>
                     <tbody>
                        <% for(OrderList order : GetOrderList.getList()) {%>
                        <tr>
                           <td><%= order.getOrderNum() %></td>
                           <td><%= order.getName() %></td>
                           <td><%= order.getPhoneNumber() %></td>
                           <td><%= order.getheadcount() %></td>
                           <td><%= order.getdate() %></td>
                           <td><%= order.gettableNum() %></td>
                        </tr>
                         <% } %>
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </main>
   
            </div>
         </div>
      </div>
   </footer>

   </div>
   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      crossorigin="anonymous"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"></script>

   <script
      src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
      crossorigin="anonymous"></script>
   <script
      src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
      crossorigin="anonymous"></script>
   <script src="js/datatables-demo.js"></script>
   
</body>

</html>
<%@ include file="Footer.jsp"%>