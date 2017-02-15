 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<title>About Us</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" >
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>
</head>
<body>
<div id="main_container">
  <div class="top_bar">

    <div id="header">
    <div id="logo">
     <% HttpSession ses=request.getSession(false);
	String m =(String)ses.getAttribute("mail"); %>
      <% if(m==null){ %> <a href="index.jsp"><img src="images/logovj.png" alt="" border="0" width="237" height="140" /></a>
      <% } else { %> <a href="homepage.jsp"><img src="images/logovj.png" alt="" border="0" width="237" height="140" /></a> <%  } %> 
    </div>
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
        <li> <% if(m==null){ %> <a href="index.jsp" class="nav1">Home</a>
      <% } else { %> <a href="homepage.jsp" class="nav1">Home</a> <%  } %> 
        </li>
        <li class="divider"></li>
        <li><a href="AboutUs.jsp" class="nav3">About Us</a></li>
        <li class="divider"></li>
        <li><a href="contactus.jsp" class="nav6">Feedback</a></li>
        <li class="divider"></li>
       <li> <% if(m==null){ %> <a href="signup.jsp" class="nav4">Sign Up</a>
      <% } else { %> <a href="Signout" class="nav4">Sign Out</a> <%  } %> 
       </li>
       
      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current"><a href="index.jsp">About Us</a></span> </div>
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
   
         <div class="intro-info">
        
       <div id="heading"> <p>This page describes our website and its terms of use:</p></div>
        <p>
      "BooksBecho" is the next generation of free online classifieds. We act as a venue to allow our users who comply with these Terms to offer, sell, and buy used(old) books on the Website.
      This website is dedicated to providing its users quality used books at very low prices.You can find books u want, at cheap prices and in good condition.
      You can post ads of your old books for free and directly deal with the buyer.
      Our aim is to provide books to our users that are not easily available in the market and to help poor students who can not buy expensive new books at very high prices.
          </p>
        
         <p> The Website and the Service are provided to you subject to these <strong>Terms of Use:</strong></p>
         <p> For the purpose of the Terms and wherever the context so requires, the terms 'you' and 'your' shall mean any person who uses the Website or the Service in any manner whatsoever including persons browsing the Website and its content, posting advertisements or responding to any advertisements or content on the Website.
          By using the Service, you agree to comply with these Terms. Additionally, when using a portion of the Service, you agree to conform to any applicable posted guidelines for such Service, which may change or be updated from time to time at BooksBecho's sole discretion. You understand and agree that you are solely responsible for reviewing these Terms from time to time. If you object to any term or condition of these Terms, any guideline, or any subsequent changes thereto or become unhappy with BooksBecho or the Service in any way, your only choice is to immediately discontinue use of BooksBecho.
          These Terms may be updated by us at any time at its sole discretion. 
          </p>
         <p> BooksBecho does not endorse any Book/Magazine or any opinion, statement, recommendation, or advice expressed therein, and we expressly disclaims any and all liability in connection with user Content. </p>
          <p>
          You acknowledge and agree that you are solely responsible for your own Content posted on, transmitted through, or linked from the Service and the consequences of posting, transmitting, linking or publishing it. More specifically, you are solely responsible for all Content that you upload, email or otherwise make available via the Service.
          <p>
           Although you ore only be able to conduct payment and other transactions directly with the seller, "BooksBecho" is not in any way involved in such transactions. As a result, you hereby acknowledge and agree that "BooksBecho" is not a party to such transactions, has no control over any element of such transactions, and shall have no liability to any party in connection with such transactions.
      You use the Service and the Website at your own risk.<br>
     <center><i>Thank you</i></center> 
          </p>
          </div>
        </div>
          </div>
           <div class="right_content">
      <img src="images/oldbooks.jpg" alt="" width="190" height="700" />
    </div>
    <!-- end of right content -->
    <!-- end of main content -->
  <div class="footer">
    <div class="left_footer"></div>
    <div class="center_footer"> BooksBecho.in All Rights Reserved 2015<br />
        <div class="right_footer"> 
	    <% if(m==null){ %> <a href="index.jsp">Home</a><% } else { %> <a href="homepage.jsp">Home</a> <%  } %> |<a href="AboutUs.jsp">About</a> |<a href="contactus.jsp">Contact us</a> </div>
    </div>
  </div>
</div>
</body>
</html>

 