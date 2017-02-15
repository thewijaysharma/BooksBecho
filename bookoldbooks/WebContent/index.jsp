<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>
 <script src="js/validation.js" type="text/javascript"></script>
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
    </div>    <div class="oferte_content">
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
        <li><a href="AboutUs.jsp" class="nav3">About Us</a></li>
        <li class="divider"></li>
         <li><a href="contactus.jsp" class="nav6">Feedback</a></li>    
       <li class="divider"></li>
        <li><a href="signup.jsp" class="nav4">Sign Up</a></li>
        <li class="divider"></li>
        <li><a href="admin.jsp" class="nav2">Admin</a></li>
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
          <div class="center_title_bar">Log in:</div>
              <div class="successmsg">
            <%  String msglogin= (String)request.getAttribute("msglogin");
                if(msglogin!=null){  	%>
              <%= msglogin %>  
              
              <% } %>	
              </div>
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
        
          <form action="login" name="loginform" onsubmit="return validateform()">
          <div class="contact_form">
            <div class="form_row">
   			  <label class="contact"><strong>E-mail:</strong></label>
              <input type="text" class="contact_input" name="email" />
              </div>
            <div class="form_row">
              <label class="contact"><strong>Password:</strong></label>
              <input type="password" class="contact_input" name="pw" required />
            </div>
            <div class="form_row">
             <input type="submit" value="login">
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
         <div class="safety">
                <div id="heading"> <p>How to Buy Safely:</p></div>
         <p>
         
   1) Always meet the seller at a safe location and inspect the item before purchasing.<br>
   2) The best way to transact is to collect the item and pay at the same time. Never transfer funds or use a debit card to pay someone you do not know before collecting an item.<br>
   3) Ask for clear information on condition of the item, price, payment and delivery method.<br>
   4) Use only those payment methods that you trust and are familiar with. Never give out your financial information.<br>
   5) It is recommended to purchase items directly from the seller.<br>
   6)  Do your research on comparative prices for the product.<br>
</p>
      <div id="heading"> <p>How to Sell Safely:</p></div>
        <p>
    1) Try to take the full payment at the time of the delivery. Remember to use a safe location to meet.<br>
   2) Watch out for fake currency and money orders. Be aware that banks will not honour fake currency/money order and will hold you responsible for it.<br>
   3) Verify the buyer’s credentials if there is a request for a bulk order. Ask the buyer to provide photo ID and proof of address.<br>
   4) Do not share your financial information except the one required for payment.
         </p>
          </div>
        </div>
            <!-- end of center content -->
          </div>
           <div class="right_content">
      <img src="images/oldbooks.jpg" alt="" width="190" height="600" />
   
    <!-- end of right content -->
    <!-- end of main content -->
</div>
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

