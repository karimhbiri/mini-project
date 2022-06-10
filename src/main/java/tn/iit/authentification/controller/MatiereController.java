package tn.iit.authentification.controller;

import tn.iit.authentification.controller.*;
import tn.iit.authentification.model.Metier;
import tn.iit.dao.MetierDAO;


import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MatiereController
 */
@WebServlet("/MatiereController")
public class MatiereController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MatiereController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		int idPart = Integer.parseInt(request.getParameter("id"));
		System.out.println(idPart);
		MetierDAO participentDao = new MetierDAO();

		try {

			if (action != null && action.equals("supprimer")) {
				System.out.println("supp");
				participentDao.deleteMetier(idPart) ; 
				response.sendRedirect("matieres.jsp");
			}

			if (action != null && action.equals("modifier")) {
				System.out.println("modifier");
				Metier participant ;
				participant = participentDao.getMetier(idPart);
				request.setAttribute("part", participant);
				request.getRequestDispatcher("matieres.jsp").forward(request, response);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletContext application = getServletContext();
		Metier metier = new Metier(0, request.getParameter("nomMatiere"), request.getParameter("alias"), request.getParameter("module")) ; 
		System.out.println("");
		MetierDAO metierDAO = new MetierDAO();
		metierDAO.saveMetier(metier) ; 
		
		response.sendRedirect("index.jsp");

		
	}

}
