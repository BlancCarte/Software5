// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

//dataSet
var data1 = {
    label: "Revenue",
    backgroundColor: "rgba(200,100,55,1)",
    borderColor: "rgba(200,100,55,1)",
    data: [100,200,30,400,500]
};
var data2 = {
  label: "Revenue",
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
var btn = document.getElementsByClassName('DateSelect');
console.log(btn);

// Bar Chart Example
var ctx = document.getElementById("myBarChart");
var myLineChart = new Chart(ctx, {
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
console.log(myLineChart.data.datasets)
btn[2].addEventListener('click', e => {
  myLineChart.data.datasets = [data2]
  myLineChart.update();
  console.log(myLineChart.data.datasets)
});
