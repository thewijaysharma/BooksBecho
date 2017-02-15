package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataModels.logic;
import dataModels.logindata;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String e=request.getParameter("email");
		String pw=request.getParameter("pw");
		
		logindata li=new logindata();
		
		li.setEm(e);
		li.setPw(pw);
		try{
		if(logic.login(li).next()) {

		HttpSession ses=request.getSession();
		ses.setAttribute("mail",e );
			
		RequestDispatcher rd=request.getRequestDispatcher("homepage.jsp");
		rd.forward(request, response);
		
		}	
		
		else{
			String msg="An error occured..you might not be registered user";
			request.setAttribute("msg",msg);
			request.getRequestDispatcher("index.jsp").forward(request,response);
		}}
		catch(Exception ex){
			ex.printStackTrace();
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
