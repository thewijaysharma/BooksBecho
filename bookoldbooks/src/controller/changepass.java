package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataModels.changepwdata;
import dataModels.logic;


/**
 * Servlet implementation class changepass
 */
public class changepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changepass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String neww=request.getParameter("new");
		String old=request.getParameter("old");
		HttpSession ses=request.getSession(false);
		String em=(String) ses.getAttribute("mail");
		
		changepwdata change=new changepwdata();
		change.setMail(em);
		change.setOld(old);
		change.setNeww(neww);

if(logic.changepw(change)==0){
	
	String msg="An error occured..you might have input incorrect old password";
	request.setAttribute("msg",msg);
	request.getRequestDispatcher("changepass.jsp").forward(request,response);	
}
else{
	
	String msgpass="Password changed successfully";
	request.setAttribute("msgpass",msgpass);
	request.getRequestDispatcher("settings.jsp").forward(request,response);	}

}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
