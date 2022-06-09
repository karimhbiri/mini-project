<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="tn.iit.authentification.model.*"%>
<%@page import="java.util.ArrayList"%>

<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <title>
    Accueil
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="assets/css/material-dashboard.css?v=3.0.2" rel="stylesheet" />
</head>

<body class="g-sidenav-show  bg-gray-200 dark-version">
<c:set var = "role" value = "${sessionScope.role}"/>
<c:set var = "user" value = "${sessionScope.currentUser.getPrenom()}"/>
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a style="padding: 10px;display: flex;flex-direction: column;justify-content: center;align-items: center;gap: 7px;" class="navbar-brand m-0" href=" https://demos.creative-tim.com/material-dashboard/pages/dashboard " target="_blank">
        <img src="assets/img/Java-EE.png" class="navbar-brand-img h-100" alt="main_logo">
        <span class="ms-1 font-weight-bold text-white">Mini Projet JEE</span>
      </a>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto  max-height-vh-100" style="height:100%!important;" id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link text-white " href="index.jsp">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">dashboard</i>
            </div>
            <span class="nav-link-text ms-1">Dashboard</span>
          </a>
        </li>
        
        <c:if test="${role == 'Enseignant' }">
   
			<li class="nav-item">
	          <a class="nav-link text-white active bg-gradient-primary" href="matieres.jsp">
	            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
	              <i class="material-icons opacity-10">school</i>
	            </div>
	            <span class="nav-link-text ms-1">Matieres</span>
	          </a>
	        </li>
	
	        <li class="nav-item">
	          <a class="nav-link text-white " href="demandetirage.jsp">
	            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
	              <i class="material-icons opacity-10">task</i>
	            </div>
	            <span class="nav-link-text ms-1">Demande de tirage</span>
	          </a>
	        </li>
		
	    </c:if>
	    
        <c:if test="${role == 'Agent de tirage' }">
        	<li class="nav-item">
	          <a class="nav-link text-white " href="demandetirage.jsp">
	            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
	              <i class="material-icons opacity-10">task</i>
	            </div>
	            <span class="nav-link-text ms-1">Voir les demandes</span>
	          </a>
	        </li>
	     </c:if>
        
        <li class="nav-item">
          <a class="nav-link text-white " href="Disconnect">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">waving_hand</i>
            </div>
            <span class="nav-link-text ms-1">Se deconnecter</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="sidenav-footer position-absolute w-100 bottom-0 ">
      <div class="mx-3">
      </div>
    </div>
  </aside>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <nav style="box-shadow: inset 0 0px 1px 1px rgb(254 254 254 / 90%), 0 20px 27px 0 rgb(0 0 0 / 5%) !important;backdrop-filter: saturate(200%) blur(30px);
    background-color: rgba(255, 255, 255, 0.8) !important;" class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl position-sticky blur shadow-blur mt-4 left-auto top-1 z-index-sticky" id="navbarBlur" navbar-scroll="true">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="index.jsp">Mini Projet JEE Dashboard</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Matieres</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">Matieres</h6>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
          </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body font-weight-bold px-0">
                <i class="fa fa-user me-sm-1"></i>

		      		<c:if test="${empty  role}">
						<%
							session.removeAttribute("role");
							session.removeAttribute("currentUser");
							response.sendRedirect("sign-in.jsp");
						%>
		      		</c:if>
                	<c:if test="${not empty role}">
		      			<span class="d-sm-inline d-none"><c:out value = "${user}"/></span>
		      		</c:if>
		      		
		      		<c:if test="${role == 'Agent de tirage'}">
		      			<%
							response.sendRedirect("index.jsp");
						%>
		      		</c:if>
              </a>
            </li>
            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </a>
            </li>
            <li class="nav-item px-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0">
                <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
      <br>
      
      <div style="color: #efefef;" class="alert alert-secondary" role="alert">
	      <strong>Matiere!</strong> Ajouter votre matiere pour faciliter la gestion de vos demandes!
	  </div>
      
      <div class="row">
		  	<div style="border-right: 1px solid #8f8f8f;" class="col-14 col-md-9">
			  	<h3>
				  Formulaire
				  <small class="text-muted">Ajouter vos matieres!</small>
				</h3>
				<form action="TestController" method="post">
					<div class="input-group input-group-outline my-3">
				      <label class="form-label">Nom de la matiere</label>
				      <input type="text" name="nomMatiere" class="form-control">
				    </div>
				    <div class="input-group input-group-outline my-3">
				      <label class="form-label">Alias (e.g: English, alias is EN)</label>
				      <input type="text" name="alias" class="form-control">
				    </div>
				    <div class="input-group input-group-outline my-3">
				      <label class="form-label">Module</label>
				      <input type="text" name="module" class="form-control">
				    </div>
				    <button class="btn bg-gradient-primary" type="submit">Enregistrer</button>
					
					<button class="btn btn-icon btn-2 btn-primary" type="button">
						<span class="btn-inner--icon"><i class="material-icons">lightbulb</i></span>
					</button>
				</form>
			</div>
		  	<div class="col-4 col-md-3">
				<h5>
				  <small class="text-muted">Description</small>
				</h5>
			</div>
	  </div>
      
      <footer class="footer py-4  ">
		<div class="container-fluid">
			<div class="row align-items-center justify-content-lg-between">
				<div class="col-lg-6 mb-lg-0 mb-4">
					<div class="copyright text-center text-sm text-muted text-lg-start">
					Institut International de Technologie Sfax Tunisie: IIT @ <script>document.write(new Date().getFullYear())</script>,
					made with Java EE by Oussema and Karim.
					</div>
				</div>
			
			</div>
		</div>
	  </footer>
    </div>
  </main>
  <div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
      <i class="material-icons py-2">settings</i>
    </a>
    <div class="card shadow-lg">
      <div class="card-header pb-0 pt-3">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Options</h5>
          <p>Voir les parametres de l'application.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
            <i class="material-icons">clear</i>
          </button>
        </div>
        <!-- End Toggle Button -->
      </div>
      <hr class="horizontal dark my-1">
      <div class="card-body pt-sm-3 pt-0">
        <!-- Sidebar Backgrounds -->
        <div>
          <h6 class="mb-0">Couleurs de menu</h6>
        </div>
        <a href="javascript:void(0)" class="switch-trigger background-color">
          <div class="badge-colors my-2 text-start">
            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
          </div>
        </a>
        <!-- Sidenav Type -->
        <div class="mt-3">
          <h6 class="mb-0">Type de menu</h6>
          <p class="text-sm">Choisir votre type de menu prefere.</p>
        </div>
        <div class="d-flex">
          <button class="btn bg-gradient-dark px-3 mb-2 active" data-class="bg-gradient-dark" onclick="sidebarType(this)">Dark</button>
          <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
          <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
        </div>
        <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
        <!-- Navbar Fixed -->
        <div class="mt-3 d-flex">
          <h6 class="mb-0">Header fixe</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" checked type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
          </div>
        </div>
        <hr class="horizontal dark my-3">
        <div class="mt-2 d-flex">
          <h6 class="mb-0">Clair / Fonce</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
          </div>
        </div>
        <hr class="horizontal dark my-sm-4">
      </div>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
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
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/material-dashboard.min.js?v=3.0.2"></script>
</body>

</html>