package tn.iit.view;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AuthView
 */
@WebServlet("/InscriptionView")
public class InscriptionView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InscriptionView() {
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
		PrintWriter out = response.getWriter();
		out.append("<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "<meta charset=\"ISO-8859-1\">\r\n"
				+ "<title>Insert title here</title>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "\r\n");
		out.append("	<form method=\"post\" action=\"InscriptionController\">\r\n"
				+ "		<table>\r\n"
				+ "			<tr>\r\n"
				+ "				<td>Nom : </td>\r\n"
				+ "				<td><input name=\"nom\"></td>\r\n"
				+ "			</tr>\r\n"
				+ "			<tr>\r\n"
				+ "				<td>Pr�nom : </td>\r\n"
				+ "				<td><input name=\"prenom\"></td>\r\n"
				+ "			</tr>\r\n"
				
				+ "			<tr>\r\n"
				+ "				<td>Login : </td>\r\n"
				+ "				<td><input name=\"login\"></td>\r\n"
				+ "			</tr>\r\n"
				+ "			<tr>\r\n"
				+ "				<td>Mot de passe : </td>\r\n"
				+ "				<td><input type=\"password\" name=\"password\"></td>\r\n"
				+ "			</tr>\r\n"
				+ "			<tr>\r\n"
				+ "				<td colspan=\"2\"><input type=\"submit\" value=\"Valider\"><input type=\"reset\" value=\"annuler\"></td>\r\n"
				+ "			</tr>\r\n"
				+ "		</table>\r\n"
				+ "	</form>\r\n"
				+ "</body>\r\n"
				+ "</html>");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
