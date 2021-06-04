<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="DataTier.GetMenuFavorite"%>
<%@page import="DTO.GetMenuStatistic"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>

<head>
<title>원형차트</title>
<meta charset="UTF-8">
<link href="../Design/css/styles.css" rel="stylesheet" />
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
		<canvas id="myPieChart" width="100%" height="50"></canvas>
	</div>
	<script>
	// Set new default font family and font color to mimic Bootstrap's default styling
	Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#292b2c';
	
	//dataSet
	var data11 = {
	  data: pieChartData,
	  backgroundColor: ['#92E68C', '#98A9FA', '#FAEF64', '#FFB76D','#FA6E7E'],
	};
	var data21 = {
	  data: [12.21, 15.58, 11.25, 8.32, 4.4],
	  backgroundColor: ['#92E68C', '#98A9FA', '#FAEF64', '#FFB76D','#FA6E7E'],
	};
	var data31 = {
	  data: [12.21, 15.58, 11.25, 8.32, 4.4],
	  backgroundColor: ['#92E68C', '#98A9FA', '#FAEF64', '#FFB76D','#FA6E7E'],
	};
</script>
</body>
</html>