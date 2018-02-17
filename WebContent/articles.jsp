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
<title>Articles | Voice Modulation Training</title>

    <meta name="keywords" content="">
	<meta name="description" content="Articles on voice mdoluation tips">
    <meta name="author" content="BharatKumar Thanvi">
    
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
						<h2 class="page-title">Articles</h2>
					</div> <!-- /.col-md-6 -->
					<div class="col-md-6 col-sm-6 text-right">
						<span class="page-location">Home / Articles</span>
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
							ServletContext context = session.getServletContext();
							String path = context.getRealPath("/").concat("\\articles\\");
							System.out.println(">>>" + request.getContextPath());
							System.out.println(">Path>" + path);
							
							java.io.File folder = new java.io.File( path ); // create a File object
							File[] listOfFiles = folder.listFiles();
							
							System.out.println("\nSort files in descending order base on last modification date");
							 
							Arrays.sort(listOfFiles, LastModifiedFileComparator.LASTMODIFIED_REVERSE);
							for (int i = 0; i < listOfFiles.length; i++) {
								File file = listOfFiles[i];
								System.out.printf("File: %s - " + new Date(file.lastModified()) + "\n", file.getName());
							}
														
							for (File file : listOfFiles){								
								
								
						    if ( file.exists() )                          // check that the file exists
						    {                                             // before trying to create a
						                                                  // BufferedReader
						        // Create a BufferedReader from the file
						        java.io.BufferedReader inFile = new java.io.BufferedReader(new java.io.FileReader( file ) );
						 
						        String line1_Heading = inFile.readLine();
						        String line2_Date = inFile.readLine();
						        String line3_Author = inFile.readLine();						        
						        String line4_CoverPic = inFile.readLine();
						        String line5_Thumb = inFile.readLine();
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
										<img src="images/articles/<%=line4_CoverPic%>" alt="">
									</a>
								</div> <!-- /.blog-image -->
							
							<%-- <%while ( line != null )
						        {%> --%>
								<!-- <p class="light-text">test light text</p> -->
								<p> <%=line6_Intro%><% line = inFile.readLine();
					         /* } */
						   inFile.close();
						  } %>
					   <a style="cursor: pointer;" onclick="readArticle( '<%=file.getName()%>')">Continue Reading...</a></p>
					</div> <!-- /.blog-content -->
			       </div> <!-- /.post-blog --><%}%>
			       </div> <!-- /.col-md-12 --
					<div class="col-md-12">
						<ul class="pages">
							<li><a href="#" class="active">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">...</a></li>
							<li><a href="#">13</a></li>
						</ul>
					 </div> <!-- /.col-md-12 -->
					</div> <!-- /.rows -->
				</div> <!-- /.col-md-8 -->
					
		<%@ include file="sidebar.jsp" %>
		
				
	</div> <!-- /.row -->
	</div> <!-- /.container -->	
   
   <form action="Article" method="post" id="articleForm" style="visibility: hidden;">
   <input type="text" value= "" name = "fullArticleName" id = "fullArticleName">    
   </form>
	
	

	<%@include file="footer.jsp" %>
	

	<!-- Scripts -->
	<script src="js/min/plugins.min.js"></script>
	<script src="js/min/medigo-custom.min.js"></script>
<script type="text/javascript">
function readArticle(ArticleName){
	//alert (ArticleName);
	$("#fullArticleName").val(ArticleName);
	$("form#articleForm").submit();
	
	
}
</script>

</body>
</html>