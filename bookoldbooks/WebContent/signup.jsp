<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" >
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
<title>Register</title>
</head>
<body>
<div id="main_container">
  <div class="top_bar">

    <div id="header">
    <div id="logo"> <a href="index.jsp"><img src="images/logovj.png" alt="" border="0" width="237" height="140" /></a> </div>
    <div class="oferte_content">
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
      
      </div>
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
    </div>
    <!-- end of oferte_content-->
  </div>
  <div id="main_content">
    <div id="menu_tab">
      <div class="left_menu_corner"></div>
      <ul class="menu">
       <li><a href="index.jsp" class="nav1"> Home</a></li>
        <li class="divider"></li>
        <li><a href="AboutUs.jsp" class="nav3">About Us</a></li>
        <li class="divider"></li>
            <li><a href="contactus.jsp" class="nav6">Feedback</a></li>       
       <li class="divider"></li>
        <li><a href="signup.jsp" class="nav4">Sign Up</a></li>
        <li class="divider"></li>
   
      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current">Sign Up</span> </div>
    <div class="left_content">
      <div class="title_box">Subject Categories</div>
      <ul class="left_menu">
        <li class="odd"><a href="getBookDetailsServlet?category=Mathematics">Mathematics</a></li>
        <li class="even"><a href="getBookDetailsServlet?category=Science">Science</a></li>
        <li class="odd"><a href="getBookDetailsServlet?category=English">English</a></li>
        <li class="even"><a href="getBookDetailsServlet?category=Hindi">Hindi</a></li>
        <li class="odd"><a href="getBookDetailsServlet?category=Physics">Physics</a></li>
        <li class="even"><a href="getBookDetailsServlet?category=Chemistry">Chemistry</a></li>
        <li class="odd"><a href="getBookDetailsServlet?category=Computer">Computer</a></li>
        <li class="even"><a href="getBookDetailsServlet?category=Accounts">Accounts</a></li>
        <li class="odd"><a href="getBookDetailsServlet?category=Business_Studies">Business Studies</a></li>
        <li class="even"><a href="getBookDetailsServlet?category=Social_Science">Social Science</a></li>
        <li class="odd"><a href="getBookDetailsServlet?category=Others">Others</a></li>
      </ul>
     
<div class="border_box">
       </div>
    </div>
    <!-- end of left content -->
     <div class="center_content">
      <div class="center_title_bar">Sign Up Form</div>
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
         
          <form action="signup" name="signup" onsubmit="return validatemail()">
          <div class="contact_form">
            <div class="form_row">
              <label class="contact"><strong>E-mail:</strong></label>
              <input type="text" class="contact_input" name="email" required />
            </div>
            <div class="form_row">
              <label class="contact"><strong>Name:</strong></label>
              <input type="text" class="contact_input" name="name" required/>
            </div>
            <div class="form_row">
              <label class="contact"><strong>City:</strong></label>
              <input type="text" class="contact_input" name="city" required />
            </div>
            <div class="form_row">
              <label class="contact"><strong>Password:</strong></label>
              <input type="password" class="contact_input" name="pw"  />
            </div>
            <div class="form_row">
             <input type="submit" value="Register">
            </div>
     </div>
                  </form>
     
        <div class="bottom_prod_box_big"></div>
      </div>
    </div>
    <div class="errormsg">
            <%  String msg= (String)request.getAttribute("msg");
                if(msg!=null){  	%>
              <%= msg %>  
              
              <% } %>	
             
           
            </div>
    <!-- end of center content -->
      </div>
    </div>
    <!-- end of right content -->
 <div class="right_content">
      <img src="images/oldbooks.jpg" alt="" width="180" height="400" />
    </div>
  <!-- end of main content -->
   <div class="footer">
    <div class="left_footer"></div>
    <div class="center_footer"> BooksBecho.in All Rights Reserved 2015<br />
    <div class="right_footer"> <a href="index.jsp">Home</a> |<a href="AboutUs.jsp">About</a> |<a href="contactus.jsp">Contact us</a> </div>
  </div>
</div>
</div>
</body>
</html>
