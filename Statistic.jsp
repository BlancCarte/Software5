<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Statistic</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>

</head>
<style>
.DateSelect {
	float: right;
}
</style>
<body>
	<main>
		<div class="container-fluid" style="background-color: #212121;">
			<h1 class="mt-4" style="color: aliceblue;">통계</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item"><a>Statistic</a></li>
				<li class="breadcrumb-item"><a href="OrderTable.jsp">Table</a></li>
			</ol>
			<div class="card mb-4">
				<div class="card-header">
					주간 방문자 통계 <input class="DateSelect" type="submit" value="조회">
					<input class="DateSelect" type="week" value="2019-09-22">
				</div>
				<div class="card-body">
					<canvas id="myAreaChart" width="100%" height="30"></canvas>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="card mb-4">
						<div class="card-header">
							<select id="BarSelect">
								<option value="1">2021 상반기</option>
								<option value="2">2021 하반기</option>
							</select> 매출 <input class="DateSelect" type="submit" value="조회"
								onclick="BarBtnClick();">
						</div>
						<div class="card-body">
							<canvas id="myBarChart" width="100%" height="50"></canvas>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="card mb-4">
						<div class="card-header">
							월간 메뉴 선호도? <input class="DateSelect" type="submit" value="조회">
							<input class="DateSelect" type="month" value="2019-09-22">
						</div>
						<div class="card-body">
							<canvas id="myPieChart" width="100%" height="50"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>

	<script>
	var labels1 = ["January", "February", "March", "April", "May", "June"];
	var labels2 = ["July", "August", "September", "October", "November", "December"];
	var data1 = {
		    label: "매출",
		    backgroundColor: "rgba(200,100,55,1)",
		    borderColor: "rgba(200,100,55,1)",
		    data: [100,200,30,400,500,600]
		};
		var data2 = {
		  label: "매출",
		  backgroundColor: "rgba(200,100,55,1)",
		  borderColor: "rgba(200,100,55,1)",
		  data: <%%>
		};
	var ctx = document.getElementById("myBarChart");
    var myBarChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: labels1,
        datasets: [
          data1
        ],
      },
      options: {
        scales: {
          xAxes: [{
            time: {
              unit: 'month'
            },
            gridLines: {
              display: false
            },
            ticks: {
              maxTicksLimit: 6
            }
          }],
          yAxes: [{
            ticks: {
              min: 0,
              max: 20000,
              maxTicksLimit: 5
            },
            gridLines: {
              display: true
            }
          }],
        },
        legend: {
          display: false
        }
      }
    });
    
    function BarBtnClick(){
    	  var e = document.getElementById("BarSelect");
    	  var strUser = e.options[e.selectedIndex].value;
    	  if(strUser == 1){
    	    myBarChart.data.datasets = [data1]
    	    myBarChart.data.labels = labels1
    	    myBarChart.update();
    	  }else{
    	    myBarChart.data.datasets = [data2]
    	    myBarChart.data.labels = labels2
    	    myBarChart.update();
    	  }
    	}
    <%
    
    %>
    </script>
</body>
</html>