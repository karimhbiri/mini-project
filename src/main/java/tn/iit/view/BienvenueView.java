package tn.iit.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.iit.authentification.model.Utilisateur;

/**
 * Servlet implementation class BienvenueView
 */
@WebServlet("/BienvenueView")
public class BienvenueView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BienvenueView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		Utilisateur u = (Utilisateur) session.getAttribute("currentUser");
		out.append("Bienvenu Mr/Mme : "+u.getNom() + " "+ u.getPrenom());
		out.append("<br>Vos param�tres sont  : ");
		out.append("<br>&nbsp;&nbsp;&nbsp;Login : "+u.getLogin());
		out.append("<br>&nbsp;&nbsp;&nbsp;Mot de passe  : "+u.getPwd());
		out.append("<br><a href=Disconnect>D�connexion</a> ");
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
