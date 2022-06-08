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
</html>