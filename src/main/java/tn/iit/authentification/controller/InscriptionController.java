package tn.iit.authentification.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.iit.authentification.model.Utilisateur;
import tn.iit.dao.UtilisateurDAO;

/**
 * Servlet implementation class InscriptionController
 */
@WebServlet("/InscriptionController")
public class InscriptionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InscriptionController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Utilisateur u = new Utilisateur(0,request.getParameter("nom"), request.getParameter("prenom"),request.getParameter("email"), request.getParameter("pwd"),"admin");
		ServletContext application = getServletContext();
		List<Utilisateur> liste = (List<Utilisateur>) application.getAttribute("listeUsers");
		if (liste == null) {
			liste = new ArrayList<Utilisateur>();
		}
		liste.add(u);
		request.setAttribute("listeUsers", liste);

		request.getSession().setAttribute("listeUsers",liste);

		response.sendRedirect("sign-in.jsp?success=success");
		try {
			UtilisateurDAO.saveUser(u);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
