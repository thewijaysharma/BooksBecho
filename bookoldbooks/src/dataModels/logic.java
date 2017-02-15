package dataModels;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dataModels.signupdata;

public class logic {

	public static int register (signupdata x){
		
		int s=0;
		
		try{
			
			Connection c=connection.connect.getcon();
			PreparedStatement p=c.prepareStatement("insert into signup values(?,?,?,?)");
			p.setString(1,x.getEm());
			p.setString(2,x.getName());
			p.setString(3,x.getPw());
			p.setString(4,x.getCity());
			s=p.executeUpdate();	
			
		}
		
		catch(Exception ex){
			ex.printStackTrace();
			
		}
		return s;
		
	}
	
	
public static ResultSet login(logindata x){
		
	ResultSet rs=null;
		try{
				
			Connection c=connection.connect.getcon();
			
			
			PreparedStatement p=c.prepareStatement("select * from signup where email=? and password=?");
			p.setString(1,x.getEm());
			p.setString(2,x.getPw());
			rs=p.executeQuery();	
			
		}
		
		catch(Exception ex){
			ex.printStackTrace();
			
		}
		return rs;
		
	}
	

public static int contact(contactusdata x){
	
	int cont=0;
	
	try{
		
		Connection c=connection.connect.getcon();
		
		
		PreparedStatement p=c.prepareStatement("insert into contactus values(?,?,?,?,?)");
		p.setString(1,x.getName());
		p.setString(2,x.getEm());
		p.setInt(3,x.getPhone());
		p.setString(4,x.getComp());
		p.setString(5,x.getMsg());

		cont=p.executeUpdate();	
		
	}
	
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	return cont;
	
}



public static int changepw(changepwdata x) {
	
int cp=0;
	
	try{
		
		Connection c=connection.connect.getcon();
		
		
		PreparedStatement p=c.prepareStatement("Update signup set password=? where email=? AND password=?");
		
		p.setString(1,x.getNeww());
		p.setString(2,x.getMail());
		p.setString(3,x.getOld());
		cp=p.executeUpdate();	
	}
	
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	return cp;
	
	
}
	
public static int changecity(changecitydata x) {
	
int cp=0;
	
	try{
		
		Connection c=connection.connect.getcon();
		
		
		PreparedStatement p=c.prepareStatement("Update signup set city=? where email=?");
		
		p.setString(1,x.getCity());
		p.setString(2,x.getMail());
		cp=p.executeUpdate();	
	}
	
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	return cp;
	
	
}


public static int changename(changenamedata d) {
	
int cn=0;
	
	try{
		
		Connection c=connection.connect.getcon();
		
		
		PreparedStatement p=c.prepareStatement("Update signup set name=? where email=?");
		
		p.setString(1,d.getName());
		p.setString(2,d.getMail());
		cn=p.executeUpdate();	
	}
	
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	return cn;
	
}

public static ResultSet getBookDetail(String category){
	
	ResultSet rs=null;
		
	try{
			Connection c=connection.connect.getcon();
			PreparedStatement p=c.prepareStatement("select * from bookdetails where subject=?");
			p.setString(1,category);
			rs=p.executeQuery();
			
		}
		
		catch(Exception ex){
			ex.printStackTrace();
			
		}
		return rs;
		
	}


public static ResultSet oneBookDetail(int bookid) {
	
	ResultSet rs=null;
	try{
			
		Connection c=connection.connect.getcon();
		PreparedStatement p=c.prepareStatement("select * from bookdetails where bookid=?");
		p.setInt(1,bookid);
		rs=p.executeQuery();
	}
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	return rs;
	
}


public static ResultSet getUploadedAds(String email) {
	ResultSet rs=null;
	
	try{
		Connection c=connection.connect.getcon();
		
		PreparedStatement p=c.prepareStatement("select * from bookdetails where email=?");
		p.setString(1,email);
		rs=p.executeQuery();	
		
	}
	
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	return rs;
	
}

public static int deleteAd(int bookid) {
	
int delete=0;
try{
			
		Connection c=connection.connect.getcon();
		
		PreparedStatement p=c.prepareStatement("delete from bookdetails where bookid=?");
		p.setInt(1,bookid);
		delete=p.executeUpdate();	
	}
	
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	
	return delete;
	
	}


public static ResultSet adminlogin(logindata x) {
	ResultSet rs=null;
	try{
			
		Connection c=connection.connect.getcon();
		
		
		PreparedStatement p=c.prepareStatement("select * from admin where email=? and password=?");
		p.setString(1,x.getEm());
		p.setString(2,x.getPw());
		rs=p.executeQuery();	
		
	}
	
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	return rs;
	
}

public static ResultSet admindisplay() {
	ResultSet rs=null;
	
	try{
		Connection c=connection.connect.getcon();
		
		PreparedStatement p=c.prepareStatement("select * from bookdetails");
		rs=p.executeQuery();
		
	}
	
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	return rs;

}

public static ResultSet showusers() {
	ResultSet rs=null;
	
	try{
		Connection c=connection.connect.getcon();
		
		PreparedStatement p=c.prepareStatement("select * from signup");
		rs=p.executeQuery();
		
	}
	
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	return rs;

}


public static int deleteuser(String mail) {

	
int delete=0;
try{
			
		Connection c=connection.connect.getcon();
		
		PreparedStatement p=c.prepareStatement("delete from signup where email=?");
		p.setString(1,mail);
		delete=p.executeUpdate();	
	}
	
	catch(Exception ex){
		ex.printStackTrace();
		
	}
	
	return delete;
	
	}


public static ResultSet filter(String sub,String city){
	
	ResultSet rs=null;
		
	try{
			Connection c=connection.connect.getcon();
			PreparedStatement p=c.prepareStatement("select * from bookdetails where subject=? AND city=?");
			p.setString(1,sub);
			p.setString(2,city);

			rs=p.executeQuery();
			
		}
		
		catch(Exception ex){
			ex.printStackTrace();
			
		}
		return rs;
		
	}
}

