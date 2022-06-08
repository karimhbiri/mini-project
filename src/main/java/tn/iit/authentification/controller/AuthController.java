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
 * Servlet implementation class AuthController
 */
@WebServlet("/AuthController")
public class AuthController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthController() {
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
		boolean trouve = false;
		String role = "";
		Utilisateur currentUser = null;
		String login = request.getParameter("email");
		String pwd = request.getParameter("pwd");	
		ServletContext application = getServletContext();
		HttpSession session = request.getSession();

		List<Utilisateur> liste = UtilisateurDAO.getAllUser();
		System.out.println("####################################################");
		System.out.println(liste != null);
		if (liste != null) {
			for (Utilisateur utilisateur : liste) {
				if(utilisateur.getLogin().equals(login) && utilisateur.getPwd().equals(pwd)) {
					System.out.println("_-_-_-_-_-_-_-_-_-_-_-_-__-_-_-_-_-_-_-_-_-_-_-_-_-");
					System.out.println(utilisateur.getNom());
					trouve = true;
					role = utilisateur.getRole();
					currentUser = utilisateur;
					break;
				}
			}
			System.out.println("if found");
			if(trouve) {
				application.setAttribute("userFound",trouve);
				session.setAttribute("currentUser", currentUser);
				session.setAttribute("role", role);
				response.sendRedirect("index.jsp");
			}
			else
			{
				application.setAttribute("userFound",trouve);
				session.setAttribute("erreur", "Erreur d'authentification !!!");
				response.sendRedirect("sign-in.jsp?error=notfound");
			}
		}
		else {
			request.setAttribute("erreur", "Aucun utilisateur n'est inscrit !!!");
			getServletContext().getRequestDispatcher("/sign-up.jsp").forward(request, response);
		}
		
		/*try {
			System.out.println(login);
			System.out.println(pwd);
			Utilisateur u = UtilisateurDAO.findByLoginPwd(login, pwd);
			System.out.println("test connection");
			if(u != null) {
				session.setAttribute("currentUser", u);
				response.sendRedirect("index.jsp");
				
			}else {
				response.sendRedirect("index.jsp");
				request.setAttribute("erreur", "Erreur d'authentification !!!");
				getServletContext().getRequestDispatcher("/authentification.jsp").forward(request, response);
				
			}
		} catch (Exception e) {
			System.out.println("catch");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
		
	}

}
