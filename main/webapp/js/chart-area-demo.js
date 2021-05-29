// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ["Mar 1", "Mar 2", "Mar 3", "Mar 4", "Mar 5", "Mar 6", "Mar 7"],
    datasets: [{
      label: "Sessions",
      lineTension: 0.3,
      backgroundColor: "rgba(200,100,55,0.2)",
      borderColor: "rgba(200,100,55,1)",
      pointRadius: 7,
      pointBackgroundColor: "rgba(80,80,80,1)",
      pointBorderColor: "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "rgba(80,80,80,1)",
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: [100, 302, 263, 194, 187, 282, 274, 359, 249, 249, 326, 384, 351],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 400,
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
