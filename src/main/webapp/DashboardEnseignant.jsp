<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="tn.iit.authentification.model.*"%>
<%@page import="tn.iit.authentification.controller.*"%>
<%@page import="tn.iit.dao.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
dskfhjsdkjfksd
<%
	List < DemandeTirage > liste = DemandeTirageDAO.getAllDemandeTirage();

%>	

	
	<div style="color: #efefef;" class="alert alert-secondary" role="alert">
		<strong>Mes demandes!</strong> suivez vos demandes de tirage!
	</div>
	<div class="card">
	  <div class="table-responsive">
	    <table class="table align-items-center mb-0">
	      <thead>
	        <tr>
	          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Matiere</th>
	          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Date</th>
	          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Statut</th>
	          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nombre de copies</th>
	          <th class="text-secondary opacity-7"></th>
	        </tr>
	      </thead>
	      <tbody>
	      
	      
	        <tr>
	          <td>
	            <div class="d-flex px-2 py-1">
	              <div class="d-flex flex-column justify-content-center">
	                <h6 class="mb-0 text-xs">Module: Scientifique</h6>
	                <p class="text-xs text-secondary mb-0">Matiere: Math</p>
	              </div>
	            </div>
	          </td>
	          <td>
	            <p class="text-xs font-weight-bold mb-0">Le 10 Juin 2020 à 12h:00 minutes</p>
	          </td>
	          <td class="align-middle text-center text-sm">
	            <span style="display: flex; justify-content: center; align-items: center; gap: 10px;" class="badge badge-dot me-4">
	              <i class="material-icons opacity-10">fiber_manual_record</i>
	              <span style="line-height: 20px;" class="text-dark text-xs">En attente</span>
	            </span>
	          </td>
	          <td class="align-middle text-center">
	            <span class="text-secondary text-xs font-weight-normal">28 copies</span>
	          </td>
	          <td class="align-middle">
	            <a href="javascript:;" class="text-secondary font-weight-normal text-xs" data-toggle="tooltip" data-original-title="Edit user">
	              <i class="material-icons opacity-10">more_vert</i>
	            </a>
	          </td>
	        </tr>



	      </tbody>
	    </table>
	  </div>
	</div>
</body>
</html>