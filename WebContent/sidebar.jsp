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
<title>Voice Modulation Training</title>
</head>
<body>
<div class="col-md-4">
		<div class="sidebar">
		
					<div class="sidebar-widget">
						<h5 class="widget-title">More Posts</h5>
						
						<% 
							String path1 =  config.getServletContext().getRealPath("/")+ "articles\\";						
							java.io.File folder1 = new java.io.File( path1 ); // create a File object
							File[] listOfFiles1 = folder1.listFiles();
							//System.out.println("\nSort files in descending order base on last modification date");
							 
							Arrays.sort(listOfFiles1, LastModifiedFileComparator.LASTMODIFIED_COMPARATOR);
							for (int i = 0; i < listOfFiles1.length; i++) {
								File file = listOfFiles1[i];
								//System.out.printf("File: %s - " + new Date(file.lastModified()) + "\n", file.getName());
							}
														
							for (File file : listOfFiles1){														
							
						    if ( file.exists() )                          // check that the file exists
						    {                                             // before trying to create a
						                                                  // BufferedReader
						        // Create a BufferedReader from the file
						        java.io.BufferedReader inFile = new java.io.BufferedReader(new java.io.FileReader( file ) );
						 
						        String line1_Heading = inFile.readLine();
						        String line2_Date = inFile.readLine();
						        String line3_Author = inFile.readLine();						        
						        String line4_CoverPic = inFile.readLine();
						        String line5_ThumbPic = inFile.readLine();						    
						        %>
						
						<div class="last-post clearfix">
							<div class="thumb pull-left">
								<a href="#"><img src="images/articles/<%=line5_ThumbPic%>" alt="Voice modulation article blog thumb"></a>
							</div>
							<div class="content">
								<span><%=line2_Date%></span>
								<h4><a href="#"><%=line1_Heading%></a></h4>
							</div>
						</div> <!-- /.last-post -->
					 <%} 
						    
							}%>	
					</div> <!-- /.sidebar-widget -->
					
					
					
				<!-- 	<div class="sidebar-widget">
						<h5 class="widget-title">Categories</h5>
						<div class="row categories">
							<div class="col-md-6">
								<ul>
									<li><a href="#">Standard</a></li>
									<li><a href="#">Audio</a></li>
									<li><a href="#">Video</a></li>
									<li><a href="#">Branding</a></li>
								</ul>
							</div>
							<div class="col-md-6">
								<ul>
									<li><a href="#">iOS Design</a></li>
									<li><a href="#">Business</a></li>
								</ul>
							</div>
						</div> /.row
					</div> /.sidebar-widget -->
					
					<div class="sidebar-widget">
						<h5 class="widget-title">Flickr Feed</h5>
						<ul id="flickr-feed" class="thumbs"></ul>
					</div> <!-- /.sidebar-widget -->
					<div class="sidebar-widget">
						<h5 class="widget-title">Text Widget</h5>
						<p class="light-text">Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient… </p>
					</div> <!-- /.sidebar-widget -->
				</div> <!-- /.sidebar -->
</div> <!-- /.col-md-4 -->
</body>
</html>