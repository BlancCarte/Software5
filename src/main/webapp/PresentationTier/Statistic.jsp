<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html>
<%@page import="DataTier.GetMonthTotal"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DataTier.GetMenuFavorite"%>
<%@page import="DTO.GetMenuStatistic"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<title>Statistic</title>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link href="../Design/css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
</head>

<%@ include file="NAVbar.jsp"%>

<style>
.DateSelect {
	float: right;
}
</style>

<body style="background-color: #212121;">
	<main>
		<div class="container">
			<div class="col-lg-12" style = "margin-top : 100px;">
				<h1 class="mt-4" style="color: aliceblue;">통계</h1>
				<div class="card mb-4">
					<div class="card-header">
						<%
						SimpleDateFormat format1 = new SimpleDateFormat("YYYY-MM");
						Date now1 = new Date();
						String dateNow1 = format1.format(now1);
						String dateText = request.getParameter("lineChartValue");
						if (dateText == null) {
							dateText = dateNow1;
						}
						%>
						<form method="post">
							<%=dateText%>월 방문자 통계 <input id="areaChartBtn" type="submit"
								value="조회" class="DateSelect"> <input class="DateSelect"
								type="month" id="lineChartValue" name="lineChartValue">
						</form>
					</div>
					<%@ include file="AreaChart.jsp"%>
				</div>
				<div class="row">
					<div class="col-lg-12">
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
					<div class="col-lg-12">
						<div class="card mb-4">
							<div class="card-header">메뉴 선호도</div>
							<div class="card-body">
								<canvas id="myPieChart" width="100%" height="50"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
	<script src="../Design/js/scripts.js"></script>
		
	<%-- bar차트 --%>
	<script>
		<%GetMonthTotal gd = new GetMonthTotal();
		ArrayList<int[]> arr = new ArrayList<>();
		arr = gd.getList();
		int[] first = arr.get(0);
		int[] second = arr.get(1);%>
		var firstHalf = [<%=first[0]%>,<%=first[1]%>,<%=first[2]%>,<%=first[3]%>,<%=first[4]%>,<%=first[5]%>]
		var secondHalf = [<%=second[0]%>,<%=second[1]%>,<%=second[2]%>,<%=second[3]%>,<%=second[4]%>,<%=second[5]%>]
		var labels1 = [ "January", "February", "March", "April", "May", "June" ];
		var labels2 = [ "July", "August", "September", "October", "November",
				"December" ];
		var data1 = {
			label : "매출",
			backgroundColor : "rgba(93, 159, 246,1)",
			borderColor : "rgba(93, 159, 246,1)",
			data : firstHalf
		};
		var data2 = {
			label : "매출",
			backgroundColor : "rgba(93, 159, 246,1)",
			borderColor : "rgba(93, 159, 246,1)",
			data : secondHalf
		};
		var ctx = document.getElementById("myBarChart");
		var myBarChart = new Chart(ctx, {
			type : 'bar',
			data : {
				labels : labels1,
				datasets : [ data1 ],
			},
			options : {
				scales : {
					xAxes : [ {
						time : {
							unit : 'month'
						},
						gridLines : {
							display : false
						},
						ticks : {
							maxTicksLimit : 6
						}
					} ],
					yAxes : [ {
						ticks : {
							min : 0,
							max : 300000,
							maxTicksLimit : 5
						},
						gridLines : {
							display : true
						}
					} ],
				},
				legend : {
					display : true
				}
			}
		});

		function BarBtnClick() {
			var e = document.getElementById("BarSelect");
			var strUser = e.options[e.selectedIndex].value;
			if (strUser == 1) {
				myBarChart.data.datasets = [ data1 ]
				myBarChart.data.labels = labels1
				myBarChart.update();
			} else {
				myBarChart.data.datasets = [ data2 ]
				myBarChart.data.labels = labels2
				myBarChart.update();
			}
		}
	</script>
	<%-- pie차트 --%>
	<script>
	Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#292b2c';
	<%GetMenuFavorite menu = new GetMenuFavorite();
	menu.getMenuArr();

GetMenuStatistic ms = menu.getMenuArr();
float arrData[] = ms.getDatas();
String arrLabels[] = ms.getLabels();%>
	
	var pieChartData = new Array();
	<%for (int i = 0; i < arrData.length; i++) {%>
	pieChartData.push('<%=arrData[i]%>')
	<%}%>
	var pielabels = new Array();
	<%for (int i = 0; i < arrLabels.length; i++) {%>
	pielabels.push('<%=arrLabels[i]%>')
	<%}%>
		//dataSet
		var data = {
			data : pieChartData,
			backgroundColor : [ '#C44747', '#C48547', '#C4B547', '#A3C447',
					'#62C447', '#47C4B8', '#478EC4', '#5247C4' ],
		};

		// Pie Chart Example
		var ctx = document.getElementById("myPieChart");
		var myPieChart = new Chart(ctx, {
			type : 'pie',
			data : {
				labels : pielabels,
				datasets : [ data ],
			},
		});
	</script>
</body>

<%@ include file="Footer.jsp"%>
</html>