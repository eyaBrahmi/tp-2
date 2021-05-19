package isetj.jsp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Formulaire_Servlet
 */
@WebServlet("/Formulaire_Servlet")
public class Formulaire_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Formulaire_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		   String op1 =request.getParameter("op1");
		   String op2 =request.getParameter("op2");
		   String OP=request.getParameter("OP");
		   String page="";

	 if (((op1.equals("")||op2.equals("")))||(!(op1.matches("[0-9]*"))|| !(op2.matches("[0-9]*")))||(OP==null)) {
		 
		page="Erreur.html";
	 }else {
		   page="res.jsp";
	 }
		   
		  RequestDispatcher disp = request.getRequestDispatcher(page) ;
		  disp.forward(request, response);
		  
	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
