<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<title>BookOldBooks</title>
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
<div id="logo">
     <% HttpSession ses=request.getSession(false);
	String m =(String)ses.getAttribute("mail"); %>
      <% if(m==null){ %> <a href="index.jsp"><img src="images/logovj.png" alt="" border="0" width="237" height="140" /></a>
      <% } else { %> <a href="admindisplay"><img src="images/logovj.png" alt="" border="0" width="237" height="140" /></a> <%  } %> 
    </div><div class="oferte_content">
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
            <li> <% if(m==null){ %> <a href="index.jsp" class="nav1">Home</a>
      <% } else { %> <a href="admindisplay" class="nav1">Home</a> <%  } %> 
        </li>
        <li class="divider"></li>
        <li><a href="AboutUsAdmin.jsp" class="nav3">About Us</a></li>
        <li class="divider"></li>
       <li> <% if(m==null){ %> <a href="signup.jsp" class="nav4">Sign Up</a>
      <% } else { %> <a href="signout.jsp" class="nav4">Sign Out</a> <%  } %> 
       </li>
      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current"><a href="index.jsp">Home</a></span> </div>
      <div class="left_content">
      <div class="title_box">Subject Categories</div>
      <ul class="left_menu">
        <li class="odd"><a href="BookDetailsServlet?category=Mathematics">Mathematics</a></li>
        <li class="even"><a href="BookDetailsServlet?category=Science">Science</a></li>
        <li class="odd"><a href="BookDetailsServlet?category=English">English</a></li>
        <li class="even"><a href="BookDetailsServlet?category=Hindi">Hindi</a></li>
        <li class="odd"><a href="BookDetailsServlet?category=Physics">Physics</a></li>
        <li class="even"><a href="BookDetailsServlet?category=Chemistry">Chemistry</a></li>
        <li class="odd"><a href="BookDetailsServlet?category=Computer">Computer</a></li>
        <li class="even"><a href="BookDetailsServlet?category=Accounts">Accounts</a></li>
        <li class="odd"><a href="BookDetailsServlet?category=Business_Studies">Business Studies</a></li>
        <li class="even"><a href="BookDetailsServlet?category=Social_Science">Social Science</a></li>
        <li class="odd"><a href="BookDetailsServlet?category=Others">Others</a></li>
      </ul>
     
      <div class="border_box">
       </div>
    </div>
    <!-- end of left content -->
    <div class="center_content">
   <%
     ResultSet rs=(ResultSet)request.getAttribute("alldetails");
     while(rs.next()){
     %>
  
      <div class="center_title_bar"><%=rs.getString("bookname") %></div>
     <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
                  <div class="product_img_big"><img height="160px" width="150px" src="fetchimages?id=<%=rs.getString("bookid") %>&col=img1" alt="Image" border="0" />
    </div><div class="product_img_big"><img height="160px" width="150px" src="fetchimages?id=<%=rs.getString("bookid") %>&col=img2" alt="" border="0" />
    </div><div class="product_img_big"><img height="160px" width="150px" src="fetchimages?id=<%=rs.getString("bookid") %>&col=img3" alt="" border="0" />
    </div>
      </div>
          <div class="details_big_box">
            <div class="product_title_big"> <%=rs.getString("bookname") %></div>
            <div class="specifications"> Author: <span class="blue">  <%= rs.getString("author") %></span><br />
              Subject:<span class="blue">  <%= rs.getString("subject") %></span><br />
              <div class="prod_price_big">Price:<span class="price"><%= rs.getString("price") %> Rs</span></div>
              Posted by:<span class="blue">  <%= rs.getString("email") %></span><br />
              Description:<span class="blue"><br> <%= rs.getString("description") %></span><br />
            </div>
        </div>
        <div class="bottom_prod_box_big"></div>
      </div>
     </div>
    <!-- end of center content -->   
     <%  } %> 
 
 <div class="right_content">
      <img src="images/oldbooks.jpg" alt="" width="190" height="500" />
    </div>
    <!-- end of right content -->
    <!-- end of main content -->
   <div class="footer">
    <div class="left_footer"></div>
   <div class="center_footer"> BooksBecho.in All Rights Reserved 2015<br />
    <div class="right_footer"> 
	    <% if(m==null){ %> <a href="index.jsp">Home</a><% } else { %> <a href="adminhome.jsp">Home</a> <%  } %> |<a href="AboutUsAdmin.jsp">About</a> </div>
  </div>
</div>
</div>
</div>
</body>
</html>

    