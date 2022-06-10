<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="tn.iit.authentification.model.*"%>
<%@page
	import="tn.iit.authentification.controller.DemandeTirageController"%>
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
	<%

	%>
	<c:set var="listeDemande" value="${applicationScope.listeDemande}" />

	<c:forEach items="${listeDemande}" var="value">
		<li><c:out value="${value}" /></li>
	</c:forEach>

	<div style="color: #efefef;" class="alert alert-secondary" role="alert">
		<strong>Mes demandes!</strong> suivez vos demandes de tirage!
	</div>
	<div class="card">
		<div class="table-responsive">
			<table class="table align-items-center mb-0">
				<thead>
					<tr>
						<th
							class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Matiere</th>
						<th
							class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Date</th>
						<th
							class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Statut</th>

						<th
							class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nombre
							de copies</th>
						<th
							class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
					</tr>
				</thead>
				<tbody>
					<%
					DemandeTirageDAO metierDao = new DemandeTirageDAO();
					List<DemandeTirage> lst = metierDao.getAllDemandeTirage();
					for (int i = 0; i < lst.size(); i++) {
					%>
					<tr>
						<td>
							<div class="d-flex px-2 py-1">
								<div class="d-flex flex-column justify-content-center">
									<h6 class="mb-0 text-xs">Module: Scientifique</h6>
									<p class="text-xs text-secondary mb-0">
										Matiere:
										<%=lst.get(i).getMatiere()%></p>
								</div>
							</div>
						</td>
						<td>
							<p class="text-xs font-weight-bold mb-0">
								Le
								<%=lst.get(i).getDate()%>
								à
								<%=lst.get(i).getTime()%>
								minutes
							</p>
						</td>
						<td class="align-middle text-center text-sm"><span
							style="display: flex; justify-content: center; align-items: center; gap: 10px;"
							class="badge badge-dot me-4"> <span
								style="line-height: 20px;" class="text-dark text-xs"><%=lst.get(i).getStatus()%></span>
						</span></td>
						<td class="align-middle text-center"><span
							class="text-secondary text-xs font-weight-normal"><%=lst.get(i).getNbrcopie()%>
								copies</span></td>
						<td class="align-middle">
							<%
							out.println("  <a style='font-size: 10px;padding: 5px;' class='btn btn-info' href ='DemandeTirageController?id="
									+ lst.get(i).getId() + "&action=modifier"
									+ "'  onclick='return confirm(\"Voulez vous vraiment moifier  cette Convention ?\")'    > Modifier  </a> ");
							%> <%
 out.println(" <a style='font-size: 10px;padding: 5px;' class='btn btn-danger' href ='DemandeTirageController?id="
 		+ lst.get(i).getId() + "&action=supprimer"
 		+ "'  onclick='return confirm(\"Voulez vous vraiment supprimer cette Convention ?\")'    > Supprimer  </a> ");
 %>
						</td>
					</tr>


					<%
					}
					%>

				</tbody>


			</table>
		</div>
	</div>
</body>
</html>