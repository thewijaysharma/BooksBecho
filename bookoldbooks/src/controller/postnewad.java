package controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


/**
 * Servlet implementation class postnewad
 */

@MultipartConfig(maxFileSize = 16177215)
public class postnewad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public postnewad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int check=0;
		HttpSession s=request.getSession(false);
		String mail=(String)s.getAttribute("mail");
		
		String city=request.getParameter("city");
		String bn=request.getParameter("name");
		String des=request.getParameter("des");
		String bauth=request.getParameter("author");
		String bpr=request.getParameter("price");
		int bprice=Integer.parseInt(bpr);
	    
		String bstd=request.getParameter("std");
	    String bsub=request.getParameter("sub");
	  
	    InputStream inputStream1 = null;
	    InputStream inputStream2 = null;
	    InputStream inputStream3 = null;
	    
		Part img1= request.getPart("img1");
		Part img2 = request.getPart("img2");
		Part img3 = request.getPart("img3");
		
		inputStream1 =img1.getInputStream();

		if (img2 != null) {
		
			inputStream2 =img2.getInputStream();
		}
		if (img3 != null) {
			
			inputStream3 =img3.getInputStream();
		}

		try{
			
			Connection c=connection.connect.getcon();
			PreparedStatement p=c.prepareStatement("insert into bookdetails(bookName,author,price,email,Standard,subject,description,img1,img2,img3,city) values(?,?,?,?,?,?,?,?,?,?,?)");
			p.setString(1,bn);
			p.setString(2,bauth);
			p.setInt(3,bprice);
			p.setString(4,mail);
			p.setString(5,bstd);
			p.setString(6,bsub);
			p.setString(7,des);
			p.setBlob(8,inputStream1);
			p.setBlob(9,inputStream2);
			p.setBlob(10,inputStream3);
			p.setString(11,city);


		check=p.executeUpdate();	
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		if(check==0){
		
			String msg="Error occured..Please try again";
			request.setAttribute("msg",msg);
			request.getRequestDispatcher("postnewad.jsp").forward(request,response);
		}
		else{
			
			String msg="Successfully posted your ad";
			request.setAttribute("msgad",msg);
			request.getRequestDispatcher("homepage.jsp").forward(request,response);
			
		}

		
		// TODO Auto-generated method stub
	}

}
