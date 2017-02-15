package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataModels.logic;

/**
 * Servlet implementation class deleteuser
 */
public class deleteuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteuser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mail=request.getParameter("id");		
		int x=logic.deleteuser(mail);
		
		if(x==0){
			String msg="Something went wrong";
			request.setAttribute("msguser", msg);
			
			request.getRequestDispatcher("showusers.jsp").forward(request, response);
		
		}
		else{
			String msg="User is removed successfully";
			request.setAttribute("msguser", msg);
			
			request.getRequestDispatcher("showusers.jsp").forward(request, response);
			}}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
