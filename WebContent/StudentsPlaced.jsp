<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.model.conn"%>
<html lang="en">
<head>
<title>Home - Home Page | Student's Site - Free Website Template from Templates.com</title>
<meta charset="utf-8">
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="Templates.com - website templates provider">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_300.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--[if lt IE 7]>
     <link rel="stylesheet" href="css/ie/ie6.css" type="text/css" media="screen">
     <script type="text/javascript" src="js/ie_png.js"></script>
     <script type="text/javascript">
        ie_png.fix('.png, footer, header nav ul li a, .nav-bg, .list li img');
     </script>
<![endif]-->
<!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
  <![endif]-->
</head>
<body id="page1">
<div class="wrap">
   <!-- header -->
   <header>
      <div class="container">
         <h1><a href="index.html">Campus Recruitment Portal</a></h1>
         <nav>
            <ul>
               <li class="current"><a href="index.html" class="m1">Home Page</a></li>
               <li><a href="Login.html" class="m2">Login</a></li>
               <li><a href="AdminLogin.html" class="m3">Admin Login</a></li>
               <li><a href="PlacementHead.html" class="m4">Placement Head</a></li>
               <li class="last"><a href="contactus.html" class="m5">Contact Us</a></li>
            </ul>
         </nav>
               </div>
   </header>
   <div class="container">
      <!-- aside -->
      <aside>
         <h3>Categories</h3>
         <ul class="categories">
            <li><span><a href="TopCompanies.html">Top Companies</a></span></li>
            <li><span><a href="StudentsPlaced.jsp">Students Placed</a></span></li>
            <li class="last"><span><a href="AboutCollege.html">About College</a></span></li>
            
            
         </ul>
         
         
         <h2>Fresh <span>News</span></h2>
         <marquee behavior="scroll" direction="up"> 
         <ul class="news">
            <li><strong>May 30, 2014</strong>
               <h4>Cognizant</h4>
               CTS is going to visit the campus  </li>
            <li><strong>June 14, 2014</strong>
               <h4>Infosys</h4>
               An off-campus drive for Infosys is going to be held in our college </li>
            <li><strong>January 17, 2014</strong>
               <h4>Tech Mahindra</h4>
               A total of 113 students got placed in Tech Mahindra.</li>
         </ul></marquee>
      </aside>
      <!-- content -->
      <section id="content">
         <div id="banner">
            <h2>Campus Recruitment<span>Portal <span>CMRGI</span></span></h2>
         </div>
<table border="1">
<tr>
<th>Student</th>
<th>Name</th>
<th>Roll No</th>
<th>Branch</th>
<th>Year of Passing Out</th>
<th>Comapany Name</th></tr>

<tr>
<%
Connection con=null;
Statement st=null;
ResultSet rs=null;
con=conn.getMyconnection();
st=con.createStatement();
String query="select * from stud_placed";
rs=st.executeQuery(query);
while(rs.next())
{
	%>
	<td><img  src="<%=rs.getString(2) %>" height="100px" width="100px"></td>
	<td><%=rs.getString(6) %></td>	
	<td><%=rs.getString(1) %></td>	

	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>

<td><%=rs.getString(5) %></td>
</tr>
<% }%>



</table>
</body>
</html>