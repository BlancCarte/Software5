// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

//dataSet
var data1 = {
    label: "매출",
    backgroundColor: "rgba(200,100,55,1)",
    borderColor: "rgba(200,100,55,1)",
    data: [100,200,30,400,500]
};
var data2 = {
  label: "매출",
  backgroundColor: "rgba(200,100,55,1)",
  borderColor: "rgba(200,100,55,1)",
  data: [20,400,340,200,100]
};
var data3 = {
  label: "Revenue",
  backgroundColor: "rgba(200,100,55,1)",
  borderColor: "rgba(200,100,55,1)",
  data: [200,500,300,300,110]
};

//labelSet
var labels1 = ["January", "February", "March", "April", "May", "June"];

var labels2 = ["July", "August", "September", "October", "November", "December"];

//const labels1 = Utils.months({count: 7});

// Bar Chart Example
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
          max: 1500,
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
var btn = document.getElementsByClassName('DateSelect');
console.log(btn);
console.log(myBarChart.data.datasets)
// btn[2].addEventListener('click', e => {
 
//   myLineChart.data.datasets = [data2]
//   myLineChart.update();
//   console.log(myLineChart.data.datasets)
// });
//조회 버튼
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
//데이터베이스 연결 후 자바 메소드로 데이터 객체 가지고와서 data1에 적용하면 끝
//차트 애니메이션 효과 2번 클릭시 적용 안됌
//버튼이랑 select css 바꿔야됌
