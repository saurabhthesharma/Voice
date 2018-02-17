<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.File" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Voice Modulation Training</title>

    <meta name="keywords" content="">
	<meta name="description" content="">
    <meta name="author" content="templatemo">
    <!-- 
	Medigo Template
	http://www.templatemo.com/preview/templatemo_460_medigo
    -->

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

	<div class="first-widget parallax" id="portfolio">
		<div class="parallax-overlay">
			<div class="container pageTitle">
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<h2 class="page-title">Image Gallery</h2>
					</div> <!-- /.col-md-6 -->
					<div class="col-md-6 col-sm-6 text-right">
						<span class="page-location">Home / Gallery / Image Gallery</span>
					</div> <!-- /.col-md-6 -->
				</div> <!-- /.row -->
			</div> <!-- /.container -->
		</div> <!-- /.parallax-overlay -->
	</div> <!-- /.pageTitle -->

	<div class="container">	
		<div class="row">
			<div class="col-md-12">
				<ul id="filters" class="mixitup-controls">
					<li class="filter" data-filter="all">All</li>
					<li class="filter" data-filter="branding">Branding</li>
					<li class="filter" data-filter="illustration">Illustration</li>
					<li class="filter" data-filter="business">Business</li>
					<li class="filter" data-filter="identity">Identity</li>
				</ul>
			</div> <!-- /.col-md-12 -->
		</div> <!-- /.row -->
	</div> <!-- /.container -->	

	<div class="container">
		<div class="row">
			<div class="portfolio-holder" id="Grid">
			<%
			
			String path =  config.getServletContext().getRealPath("/")+ "images\\Image_Gallery\\";
			File folder = new File(path);
			File[] listOfFiles = folder.listFiles();

			for (File file : listOfFiles) {
			    if (file.isFile()) {
			    %>
				<div class="portfolio-post col-sm-6 col-md-4 mix illustration">
					<div class="thumb-post">
						<div class="overlay">
                            <div class="overlay-inner">                         
                                <div class="portfolio-infos">
                                    <span class="meta-category"></span>
                                    <h3 class="portfolio-title"><a href="project-slideshow.jsp">Workshop Participants</a></h3>
                                </div>
                                <div class="portfolio-expand">
                                    <a class="fancybox" href="images/Image_Gallery/<%=file.getName()%>" title="Voice Modulation Training">
                                        <i class="fa fa-expand"></i>
                                    </a>
                                </div>
                              
                            </div>
                        </div>
                        <img src="images/Image_Gallery/<%=file.getName()%>"; alt="Voice Modulation Workshop">
					</div>
				</div> <!-- /.col-md-4 -->
 				<%
 				  }
			    }
			    %>
				
			</div> <!-- /.portfolio-holder -->
		</div> <!-- /.row -->
	</div> <!-- /.container -->

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="pages">
					<li><a href="#" class="active">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">...</a></li>
					<li><a href="#">13</a></li>
				</ul>
			</div> <!-- /.col-md-12 -->
		</div> <!-- /.row -->
	</div> <!-- /.container -->

	<%@include file="footer.jsp" %>

	<!-- Scripts -->
	<script src="js/min/plugins.min.js"></script>
	<script src="js/min/medigo-custom.min.js"></script>


</body>
</html>
