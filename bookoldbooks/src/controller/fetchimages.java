package controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.connect;

/**
 * Servlet implementation class fetchimages
 */
public class fetchimages extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fetchimages() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String col=request.getParameter("col");
		int i=Integer.parseInt(id);
		
		try{			
			Connection con=connect.getcon();
			Statement stmt=con.createStatement();
			String strSql="select "+col+" from bookdetails where bookid="+i+"";
		
		ResultSet	rs=stmt.executeQuery(strSql);
			if(rs.next()) {
			byte[] bytearray = new byte[1048576];
			int size=0;
		InputStream	sImage = rs.getBinaryStream(1);
			response.reset();
			response.setContentType("image/jpeg");
			while((size=sImage.read(bytearray))!= -1 ){
			response.getOutputStream().write(bytearray,0,size);
	}}}
			catch (Exception e) {
				e.printStackTrace();
			}

	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
