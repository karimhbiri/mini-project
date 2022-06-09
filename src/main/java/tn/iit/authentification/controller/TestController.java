package tn.iit.authentification.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.authentification.model.Test;
import tn.iit.dao.TestDAO;

/**
 * Servlet implementation class TestController
 */
@WebServlet("/TestController")
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TestController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		Test test = new Test(0, "nom", "nom", "nom");

		/*
		 * ServletContext application = getServletContext(); List<Test> liste =
		 * (List<Test>) application.getAttribute("listeUsers"); if (liste == null) {
		 * liste = new ArrayList<Test>(); } liste.add(test);
		 * request.setAttribute("listeUsers", liste);
		 * 
		 * request.getSession().setAttribute("listeUsers",liste);
		 * 
		 * response.sendRedirect("sign-in.jsp?success=success");
		 */
		try {
			TestDAO.saveUser(test);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
