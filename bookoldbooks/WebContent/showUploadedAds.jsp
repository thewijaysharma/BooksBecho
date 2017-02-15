<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<title>Uploaded Ads</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" >
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
</head>
<body>
<div id="main_container">
  <div class="top_bar">
<!--     <div class="top_search"> -->
<!--       <div class="search_text"><a href="#">Quick Search</a></div> -->
<!--       <input type="text" class="search_input" name="search" > -->
<!--       <input type="image" src="images/search.gif" class="search_bt"> -->
<!--     </div> -->
    <div id="header">
    <div id="logo"> <a href="homepage.jsp"><img src="images/logovj.png" alt="" border="0" width="237" height="140" /></a> </div>
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
      
       <li><a href="homepage.jsp" class="nav1">Home</a></li>
        <li class="divider"></li>
        <li><a href="AboutUs.jsp" class="nav3">About Us</a></li>
        <li class="divider"></li>
       <li><a href="contactus.jsp" class="nav6">Feedback</a></li>       
       <li class="divider"></li>
          <li><a href="settings.jsp" class="nav2">Settings</a></li>       
       <li class="divider"></li>
        <li><a href="Signout" class="nav4">Sign Out</a></li>       
       <li class="divider"></li>
       
       
      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current"><a href="index.jsp">Home</a></span> </div>
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
  
      <div class="center_title_bar">Result:</div>
     <%
     ResultSet rs=(ResultSet)request.getAttribute("result");
     
     while(rs.next()){
     %>

      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"> <a href="onebookdetails?id=<%= rs.getString("bookid") %>" ><%=rs.getString("bookname") %></a></div>
          <div class="product_img"> <a href="onebookdetails?id=<%= rs.getString("bookid") %>" ><img height="160px" width="160px" src="getImageServlet?id=<%=rs.getString("bookid") %>" alt="Image" border="0" /></a></div>
          <div class="prod_price"><span class="reduce">Price:</span> <span class="price"><%=rs.getString("price") %> Rs</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab">  
		<a href="onebookdetails?id=<%= rs.getString("bookid") %>" class="prod_details">Details</a> 
        <a href="deleteAd?id=<%= rs.getString("bookid") %>" class="prod_details">Delete</a>
         </div>
      </div>
      
      <% }  %>
      
    </div>
    <!-- end of center content -->   
       </div>
        <div class="right_content">
      <img src="images/oldbooks.jpg" alt="" width="190" height="600" />
    </div>   
    <!-- end of right content -->
    <!-- end of main content -->
    <div class="footer">
    <div class="left_footer"></div>
    <div class="center_footer"> BooksBecho.in All Rights Reserved 2015<br />
        <div class="right_footer"> 
	     <a href="homepage.jsp">Home</a>  |<a href="AboutUs.jsp">About</a> |<a href="contactus.jsp">Contact us</a> </div>
    </div>
  </div>
</div>
</body>
</html>