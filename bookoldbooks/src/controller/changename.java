package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataModels.changenamedata;
import dataModels.logic;

/**
 * Servlet implementation class changename
 */
public class changename extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changename() {
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
		
		changenamedata change=new changenamedata();
		change.setName(neww);
		change.setMail(em);;

if(logic.changename(change)==0){
	String msg="An error occured..please try again";
	request.setAttribute("msg",msg);
	request.getRequestDispatcher("changepass.jsp").forward(request,response);	
}
else{
	
	String msgname="Name changed successfully";
	request.setAttribute("msgname",msgname);
	request.getRequestDispatcher("settings.jsp").forward(request,response);	}
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
