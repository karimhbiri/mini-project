package tn.iit.authentification.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.authentification.model.DemandeTirage;
import tn.iit.authentification.model.Metier;
import tn.iit.authentification.model.Utilisateur;
import tn.iit.dao.DemandeTirageDAO;
import tn.iit.dao.MetierDAO;
import tn.iit.dao.TestDAO;

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
		// TODO Auto-generated method stub  ouvrir
		String action = request.getParameter("action");
		int idPart = Integer.parseInt(request.getParameter("id"));
		System.out.println(idPart);
		DemandeTirageDAO demandeTirageDAO = new DemandeTirageDAO();

		try {

			if (action != null && action.equals("supprimer")) {
				System.out.println("supp");
				demandeTirageDAO.deleteDemandeTirage(idPart) ; 
				response.sendRedirect("matieres.jsp");
			}

			if (action != null && action.equals("ouvrir")) {
				System.out.println("ouvrir");
				DemandeTirage demande ;
				demande = demandeTirageDAO.getDemandeTirage(idPart);
				request.setAttribute("demande", demande);
				request.getRequestDispatcher("ouvrirdemande.jsp").forward(request, response);
				response.sendRedirect("ouvrirdemande.jsp?id="+idPart);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("test if index executes controller");
		// TODO Auto-generated method stub
		// work in progress ya karim ken theb kamelha ena bech nor9od haha
		//int id, String enseignantNom, String matiere, int nbrcopie, Date date, Time time, String filePath, String status
		
	
		ServletContext application = getServletContext();
		DemandeTirage demandeTirage = new DemandeTirage(0,request.getParameter("nomEnseignant"), request.getParameter("nomMatiere"),
				request.getParameter("nbrCopie"), request.getParameter("date"),request.getParameter("heure"),
				request.getParameter("file"),"en attente");

		DemandeTirageDAO demandedetiregaDAO = new DemandeTirageDAO();
		DemandeTirageDAO.saveDemandeTirage(demandeTirage) ; 
		
		response.sendRedirect("index.jsp");

	}

}
