package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dataModels.logic;

/**
 * Servlet implementation class deleteAd
 */
public class deleteAd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteAd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String m=request.getParameter("id");
		int n=Integer.parseInt(m);
		int x=logic.deleteAd(n);
		
		if(x==0){
			String msg="Something went wrong";
			request.setAttribute("msgad", msg);
			
			request.getRequestDispatcher("ShowUploadedAds").forward(request, response);
		
		}
		else{
		
			request.getRequestDispatcher("ShowUploadedAds").forward(request, response);
		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
