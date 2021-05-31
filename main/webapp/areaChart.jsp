<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="user.GetMonthTotal"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="card-body">
		<canvas id="myAreaChart" width="100%" height="40"></canvas>
	</div>

	<%-- area차트 --%>
	<script>
	<% request.setCharacterEncoding("utf-8");%>
	<% 
	GetMonthTotal g = new GetMonthTotal();
	SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM");
	Date now = new Date();
	String dateNow = format.format(now);//현재 날짜

	String lineChartValue = request.getParameter("lineChartValue");
	String temp = lineChartValue;
	if(temp==null){
		lineChartValue = dateNow;
	}
	int dateArr[] = g.getMonthlyData(lineChartValue);
	String chartLabels[] = g.getLabels(lineChartValue);

	
	%>
	var lineChartData = new Array();
	<%for ( int i = 0; i < dateArr.length; i++ ){%>
	lineChartData.push('<%=dateArr[i]%>')
	<%}%>
	var labels = new Array();
	<%for ( int i = 0; i < chartLabels.length; i++ ){%>
	labels.push('<%=chartLabels[i]%>')
	<%}%>
	
	var ctx = document.getElementById("myAreaChart");
	var myLineChart = new Chart(ctx, {
	  type: 'line',
	  data: {
	    labels: labels,
	    datasets: [{
	      label: "고객",
	      lineTension: 0.3,
	      backgroundColor: "rgba(252, 36, 28,0.2)",
	      borderColor: "rgba(252, 36, 28,1)",
	      pointRadius: 5,
	      pointBackgroundColor: "rgba(35,200,155,1)",
	      pointBorderColor: "rgba(255,255,255,0.8)",
	      pointHoverRadius: 5,
	      pointHoverBackgroundColor: "rgba(35,200,155,1)",
	      pointHitRadius: 50,
	      pointBorderWidth: 2,
	      data: lineChartData,
	    }],
	  },
	  options: {
		  responsive: true,
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'date'
	        },
	        gridLines: {
	          display: false
	        },
	        ticks: {
	          maxTicksLimit: 10
	        }
	      }],
	      yAxes: [{
	        ticks: {
	          min: 0,
	          max: 30,
	          maxTicksLimit: 5
	        },
	        gridLines: {
	          color: "rgba(0, 0, 0, 0.1)",
	        }
	      }],
	    },
	    legend: {
	      display: false
	    }
	  }
	});

	</script>
</body>
</html>