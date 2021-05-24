// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

//dataSet
var data11 = {
  data: [12.21, 15.58, 11.25, 8.32, 4.4],
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
//data: [12.21, 15.58, 11.25, 8.32],
//backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745'],

// Pie Chart Example
var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["주메뉴1", "주메뉴2", "주메뉴3","주메뉴4", "기타"],
    datasets: [
      data11
    ],
  },
});
//월 변경시 데이터 변경
//색은 그래도 유지
//1월 ~ 12월
//달력 데이터 받아오는거 찾아봐야됌
//달력 안되면 그냥 select문 써버리기 가즈아

