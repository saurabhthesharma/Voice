package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddArticle
 */
@WebServlet("/AddArticle")
public class AddArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddArticle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publishedOn = request.getParameter("publishedOn");
		String intro = request.getParameter("intro");
		String content = request.getParameter("content");
		
		String Folderpath =  request.getServletContext().getRealPath("/")+ "articles\\";
		java.io.File folder = new java.io.File( Folderpath ); 
		
		File[] listOfFiles = folder.listFiles();
		
		int numberOfFiles = listOfFiles.length;
		
		System.out.println(numberOfFiles);
		++numberOfFiles;
		String path =  request.getServletContext().getRealPath("/")+ "articles\\Article_"+numberOfFiles+".txt";
		
		System.out.println("last"+ path);
		
		PrintWriter writer = new PrintWriter(path, "UTF-8");
		writer.println(title);
		writer.println(author);
		writer.println(publishedOn);
		writer.println(intro);
		writer.println(content);
		
		writer.close();
		
		
		
	}

}
