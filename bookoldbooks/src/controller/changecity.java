package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataModels.changecitydata;
import dataModels.logic;

/**
 * Servlet implementation class changecity
 */
public class changecity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changecity() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String neww=request.getParameter("new");
		HttpSession ses=request.getSession(false);
		String em=(String) ses.getAttribute("mail");
		
		changecitydata change=new changecitydata();
		change.setCity(neww);
		change.setMail(em);;

if(logic.changecity(change)==0){
	
	String msg="An error occured..please try again";
	request.setAttribute("msg",msg);
	request.getRequestDispatcher("changecity.jsp").forward(request,response);		
}
else{
	
	String msgcity="City changed successfully";
	request.setAttribute("msgcity",msgcity);
	request.getRequestDispatcher("settings.jsp").forward(request,response);	
}

}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
