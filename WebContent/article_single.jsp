<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.io.File" %>
 <%@ page import="java.text.SimpleDateFormat" %>
 <%@ page import="java.util.Date" %>
 <%@ page import="java.util.Arrays" %>
 <%@ page import="org.apache.commons.io.comparator.LastModifiedFileComparator" %>

 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Voice Modulation Training</title>

    <meta name="keywords" content="">
	<meta name="description" content="">
    <meta name="author" content="templatemo">
    
	<!-- Google Fonts -->
	<link href="http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700itali" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,900,800,700,500,200,100,600" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="bootstrap/bootstrap.css">
	<link rel="stylesheet" href="css/misc.css">
	<link rel="stylesheet" href="css/scheme.css">
	
	<!-- JavaScripts -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>

	<link rel="shortcut icon" href="images/LOGO.png" type="image/x-icon" />

</head>
<body>

    <%@include file="header.jsp" %>
 
	<div class="first-widget parallax" id="blog">
		<div class="parallax-overlay">
			<div class="container pageTitle">
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<h2 class="page-title">Article</h2>
					</div> <!-- /.col-md-6 -->
					<div class="col-md-6 col-sm-6 text-right">
						<span class="page-location">Home / Article</span>
					</div> <!-- /.col-md-6 -->
				</div> <!-- /.row -->
			</div> <!-- /.container -->
		</div> <!-- /.parallax-overlay -->
	</div> <!-- /.pageTitle -->

	<div class="container">	
		<div class="row">

			<div class="col-md-8 blog-posts">
				<div class="row">
					<div class="col-md-12">
						
							<% 
							String path =  config.getServletContext().getRealPath("/")+ "articles\\" + session.getAttribute("fullArticleName");
							
							java.io.File Articlefile = new java.io.File( path ); // create a File object							
								
								
						    if ( Articlefile.exists() )                          // check that the file exists
						    {                                             // before trying to create a
						                                                  // BufferedReader
						        // Create a BufferedReader from the file
						        java.io.BufferedReader inFile = new java.io.BufferedReader(new java.io.FileReader( Articlefile ) );
						 
						        String line1_Heading = inFile.readLine();
						        String line2_Date = inFile.readLine();
						        String line3_Author = inFile.readLine();						        
						        String line4_CoverPic = inFile.readLine();
						        String line5_ThumbPic = inFile.readLine();						        
						        String line6_Intro = inFile.readLine();
						        
						        String line = inFile.readLine();
						        
						        %>
						     <div class="post-blog">
						    <div class="blog-content">
							<h3><a href="blog-single.jsp"><%=line1_Heading%></a></h3>  
								<span class="meta-date">Published on : <%=line2_Date %></span>
								<span class="meta-author">Author : <%=line3_Author%></span>
								<div class="blog-image">
									<a href="images/articles/<%=line4_CoverPic%>">
										<img src="images/articles/<%=line4_CoverPic%>" alt="BharatKumar Thanvi | Voice Modulation Article Cover Pic">
									</a>
								</div> <!-- /.blog-image -->
							
							<%while ( line != null )
						        {%>
								
								<p> <%=line%>
								<% line = inFile.readLine();
						       }
						   inFile.close();
						  } %>
					  
					</div> <!-- /.blog-content -->
			       </div> <!-- /.post-blog -->
			       </div> <!-- /.col-md-12 -->

					</div> <!-- /.rows -->
				</div> <!-- /.col-md-8 -->
					
				<%@ include file="sidebar.jsp" %>
	</div> <!-- /.row -->
	</div> <!-- /.container -->	
   
  

	<%@include file="footer.jsp" %>
	

	<!-- Scripts -->
	<script src="js/min/plugins.min.js"></script>
	<script src="js/min/medigo-custom.min.js"></script>


</body>
</html>