package tn.iit.authentification.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.authentification.model.DemandeTirage;
import tn.iit.authentification.model.Utilisateur;

/**
 * Servlet implementation class DemandeTirageController
 */
@WebServlet("/DemandeTirageController")
public class DemandeTirageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DemandeTirageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// work in progress ya karim ken theb kamelha ena bech nor9od haha
		// DemandeTirage demandeTirage = new DemandeTirage(0,request.getParameter("nom"), request.getParameter("prenom"),request.getParameter("email"), request.getParameter("pwd"),request.getParameter("role"));
		ServletContext application = getServletContext();
	}

}
