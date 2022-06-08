<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
       <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
         <div class="card">
           <div class="card-header p-3 pt-2">
             <div class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
               <i class="material-icons opacity-10">request_page</i>
             </div>
             <div class="text-end pt-1">
               <p style="width: 70%;margin-left: 30%;" class="text-sm mb-0 text-capitalize">Nombre de demande d'aujourd'hui</p>
               <h4 class="mb-0">3</h4>
             </div>
           </div>
           <hr class="dark horizontal my-0">
           <div class="card-footer p-3">
             <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+1 </span>que hier</p>
           </div>
         </div>
       </div>
       <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
         <div class="card">
           <div class="card-header p-3 pt-2">
             <div class="icon icon-lg icon-shape bg-gradient-primary shadow-primary text-center border-radius-xl mt-n4 position-absolute">
               <i class="material-icons opacity-10">request_page</i>
             </div>
             <div class="text-end pt-1">
               <p style="width: 70%;margin-left: 30%;" class="text-sm mb-0 text-capitalize">Nombre de demande pour la semaine</p>
               <h4 class="mb-0">15</h4>
             </div>
           </div>
           <hr class="dark horizontal my-0">
           <div class="card-footer p-3">
             <p class="mb-0"><span class="text-danger text-sm font-weight-bolder">-2 </span>Que la semaine derniere</p>
           </div>
         </div>
       </div>
       <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
         <div class="card">
           <div class="card-header p-3 pt-2">
             <div class="icon icon-lg icon-shape bg-gradient-success shadow-success text-center border-radius-xl mt-n4 position-absolute">
               <i class="material-icons opacity-10">person</i>
             </div>
             <div class="text-end pt-1">
               <p style="width: 70%;margin-left: 30%;" class="text-sm mb-0 text-capitalize">Nouvel(le) enseignant(e)</p>
               <h4 class="mb-0">0</h4>
             </div>
           </div>
           <hr class="dark horizontal my-0">
           <div class="card-footer p-3">
             <p class="mb-0"><span class="text-danger text-sm font-weight-bolder">0</span> Que hier</p>
           </div>
         </div>
       </div>
       <div class="col-xl-3 col-sm-6">
         <div class="card">
           <div class="card-header p-3 pt-2">
             <div class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n4 position-absolute">
               <i class="material-icons opacity-10">weekend</i>
             </div>
             <div class="text-end pt-1">
               <p class="text-sm mb-0 text-capitalize">Sales</p>
               <h4 class="mb-0">$103,430</h4>
             </div>
           </div>
           <hr class="dark horizontal my-0">
           <div class="card-footer p-3">
             <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+5% </span>than yesterday</p>
           </div>
         </div>
       </div>
     </div>
     <div style="padding: 20px 12px;" class="row">
       <div class="card mb-3">
         <div class="card-body p-3">
           <div class="chart">
             <canvas id="chart-line-tasks" class="chart-canvas" height="300px"></canvas>
           </div>
         </div>
       </div>
     </div>
</body>
  <script src="assets/js/plugins/chartjs.min.js"></script>
<script>
//var ctx = document.getElementById("chart-bars").getContext("2d");

  // new Chart(ctx, {
  //   type: "bar",
  //   data: {
  //     labels: ["M", "T", "W", "T", "F", "S", "S"],
  //     datasets: [{
  //       label: "Sales",
  //       tension: 0.4,
  //       borderWidth: 0,
  //       borderRadius: 4,
  //       borderSkipped: false,
  //       backgroundColor: "pink",
  //       data: [50, 20, 10, 22, 50, 10, 40],
  //       maxBarThickness: 6
  //     }, ],
  //   },
  //   options: {
  //     responsive: true,
  //     maintainAspectRatio: false,
  //     plugins: {
  //       legend: {
  //         display: false,
  //       }
  //     },
  //     interaction: {
  //       intersect: false,
  //       mode: 'index',
  //     },
  //     scales: {
  //       y: {
  //         grid: {
  //           drawBorder: false,
  //           display: true,
  //           drawOnChartArea: true,
  //           drawTicks: false,
  //           borderDash: [5, 5],
  //           color: 'rgba(255, 255, 255, .2)'
  //         },
  //         ticks: {
  //           suggestedMin: 0,
  //           suggestedMax: 500,
  //           beginAtZero: true,
  //           padding: 10,
  //           font: {
  //             size: 14,
  //             weight: 300,
  //             family: "Roboto",
  //             style: 'normal',
  //             lineHeight: 2
  //           },
  //           color: "#fff"
  //         },
  //       },
  //       x: {
  //         grid: {
  //           drawBorder: false,
  //           display: true,
  //           drawOnChartArea: true,
  //           drawTicks: false,
  //           borderDash: [5, 5],
  //           color: 'rgba(255, 255, 255, .2)'
  //         },
  //         ticks: {
  //           display: true,
  //           color: '#f8f9fa',
  //           padding: 10,
  //           font: {
  //             size: 14,
  //             weight: 300,
  //             family: "Roboto",
  //             style: 'normal',
  //             lineHeight: 2
  //           },
  //         }
  //       },
  //     },
  //   },
  // });


  // var ctx2 = document.getElementById("chart-line").getContext("2d");

  // new Chart(ctx2, {
  //   type: "line",
  //   data: {
  //     labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
  //     datasets: [{
  //       label: "Mobile apps",
  //       tension: 0,
  //       borderWidth: 0,
  //       pointRadius: 5,
  //       pointBackgroundColor: "pink",
  //       pointBorderColor: "transparent",
  //       borderColor: "brown",
  //       borderColor: "biege",
  //       borderWidth: 4,
  //       backgroundColor: "transparent",
  //       fill: true,
  //       data: [50, 40, 300, 320, 500, 350, 200, 230, 500],
  //       maxBarThickness: 6

  //     }],
  //   },
  //   options: {
  //     responsive: true,
  //     maintainAspectRatio: false,
  //     plugins: {
  //       legend: {
  //         display: false,
  //       }
  //     },
  //     interaction: {
  //       intersect: false,
  //       mode: 'index',
  //     },
  //     scales: {
  //       y: {
  //         grid: {
  //           drawBorder: false,
  //           display: true,
  //           drawOnChartArea: true,
  //           drawTicks: false,
  //           borderDash: [5, 5],
  //           color: 'yellow'
  //         },
  //         ticks: {
  //           display: true,
  //           color: '#f8f9fa',
  //           padding: 10,
  //           font: {
  //             size: 14,
  //             weight: 300,
  //             family: "Roboto",
  //             style: 'normal',
  //             lineHeight: 2
  //           },
  //         }
  //       },
  //       x: {
  //         grid: {
  //           drawBorder: false,
  //           display: false,
  //           drawOnChartArea: false,
  //           drawTicks: false,
  //           borderDash: [5, 5]
  //         },
  //         ticks: {
  //           display: true,
  //           color: '#f8f9fa',
  //           padding: 10,
  //           font: {
  //             size: 14,
  //             weight: 300,
  //             family: "Roboto",
  //             style: 'normal',
  //             lineHeight: 2
  //           },
  //         }
  //       },
  //     },
  //   },
  // });

  var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");

  new Chart(ctx3, {
    type: "line",
    data: {
      labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
      datasets: [{
        label: "Mobile apps",
        tension: 0,
        borderWidth: 0,
        pointRadius: 5,
        pointBackgroundColor: "pink",
        pointBorderColor: "transparent",
        borderColor: "pink",
        borderWidth: 4,
        backgroundColor: "transparent",
        fill: true,
        data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
        maxBarThickness: 6

      }],
    },
    options: {
      bezierCurve: false,
      responsive: true,
      maintainAspectRatio: false,
      plugins: {
        legend: {
          display: false,
        }
      },
      interaction: {
        intersect: false,
        mode: 'index',
      },
      scales: {
        y: {
          grid: {
            drawBorder: false,
            display: true,
            drawOnChartArea: true,
            drawTicks: false,
            borderDash: [5, 5],
            color: 'rgba(255, 255, 255, .2)'
          },
          ticks: {
            display: true,
            padding: 10,
            color: '#f8f9fa',
            font: {
              size: 14,
              weight: 300,
              family: "Roboto",
              style: 'normal',
              lineHeight: 2
            },
          }
        },
        x: {
          grid: {
            drawBorder: false,
            display: false,
            drawOnChartArea: false,
            drawTicks: false,
            borderDash: [5, 5]
          },
          ticks: {
            display: true,
            color: '#f8f9fa',
            padding: 10,
            font: {
              size: 14,
              weight: 300,
              family: "Roboto",
              style: 'normal',
              lineHeight: 2
            },
          }
        },
      },
    },
  });
  </script>
</html>