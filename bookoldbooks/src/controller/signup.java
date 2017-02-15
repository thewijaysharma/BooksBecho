package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataModels.logic;
import dataModels.signupdata;

/**
 * Servlet implementation class signup
 */
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String e=request.getParameter("email");
		String n=request.getParameter("name");
		String pw=request.getParameter("pw");
		String cty=request.getParameter("city");

		signupdata su=new signupdata();
		
		su.setEm(e);
		su.setName(n);
		su.setPw(pw);
		su.setCity(cty);
		if(logic.register(su)==0){
		
			String msg="Same Email may already exists";
			request.setAttribute("msg",msg);
			request.getRequestDispatcher("signup.jsp").forward(request,response);
			}
		
		else{
			
			String msg="Successfully registered..Login to proceed";
			request.setAttribute("msglogin",msg);
			request.getRequestDispatcher("index.jsp").forward(request,response);
		}
	}
		
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
