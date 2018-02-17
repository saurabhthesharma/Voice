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
	<link rel="stylesheet" href="css/formStyle.css">
	
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
						<h2 class="page-title">Admin Page</h2>
					</div> <!-- /.col-md-6 -->
					<div class="col-md-6 col-sm-6 text-right">
						<span class="page-location">Home / Gallery / Admin Page</span>
					</div> <!-- /.col-md-6 -->
				</div> <!-- /.row -->
			</div> <!-- /.container -->
		</div> <!-- /.parallax-overlay -->
	</div> <!-- /.pageTitle -->

	<div class="container">	
		<div class="row">
            <div class= "audioPanel">
			<div class="col-md-8 blog-posts">
				<div class="row">
					<div class="col-md-12">
					
					
					
						<div class="admin-Form">
							<h2>Add Article</h2>
							
							<div class="form-page">
								  <div class="form">
								    <form id="add-article-form" action="AddArticle" method="Post">
								      <input type="text" placeholder="Article Title" name= "title"/>
								      <input type="text" placeholder="Article Author" name="author">
								      <input type="text" placeholder="Published On" name="publishedOn"/>
								      <input type="text" placeholder="Article Introduction (2-3 lines)" name = "intro"/>						
								      <textarea cols="50" placeholder="Content" name = "content"></textarea>
								      <button id="submitBtn"> create</button>  
								    </form>
								 
								  </div>
								</div>
							
							</div>
						</div> <!-- /.admin-Form -->
						
					
						
					</div> <!-- /.col-md-12 -->
				
				</div> <!-- /.row -->
			</div> <!-- /.col-md-8 -->
			</div>



		</div> <!-- /.row -->
	</div> <!-- /.container -->	

	<%@include file="footer.jsp" %>

	<!-- Scripts -->
	<script src="js/min/plugins.min.js"></script>
	<script src="js/min/medigo-custom.min.js"></script>
	<script type="text/javascript">
	


	$("#submitBtn").click(function() {

	    var url = "AddArticle"; // the script where you handle the form input.

	    $.ajax({
	           type: "POST",
	           url: url,
	           data: $("#add-article-form").serialize(), // serializes the form's elements.
	           success: function(data)
	           {
	               alert(data); // show response from the php script.
	           }
	         });

	    return false; // avoid to execute the actual submit of the form.
	});
		
	
	</script>
 

</body>
</html>