package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataModels.contactusdata;
import dataModels.logic;

/**
 * Servlet implementation class contactus
 */
public class contactus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		String e=request.getParameter("email");
		String n=request.getParameter("name");
		String phn=request.getParameter("phone");
		int phone=Integer.parseInt(phn);
		String c=request.getParameter("comp");
		String m=request.getParameter("msg");

		contactusdata cu=new contactusdata();
		
		cu.setEm(e);
		cu.setName(n);
		cu.setPhone(phone);
		cu.setComp(c);
		cu.setMsg(m);
		if(logic.contact(cu)==0){
		
			out.println("Something went wrong..please try again later");
			
		}
		else{
			
			out.println("Your feedback is submitted successfully"); 
			}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
