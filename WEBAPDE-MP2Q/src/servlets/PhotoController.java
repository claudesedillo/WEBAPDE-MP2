package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.PhotoService;

/**
 * Servlet implementation class PhotoController
 */
@WebServlet(urlPatterns= {"/PhotoController", "/photoTags"})
public class PhotoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PhotoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String urlpattern = request.getServletPath();
		
		switch(urlpattern) {
		case"/PhotoController": addPhoto(request, response);
								break;
		case"/photoTags": filterByTag(request, response);
		}
	}
	
	public void filterByTag(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		PhotoService ps = new PhotoService();
		request.setAttribute("Photo", ps.filterByTag(request.getParameter("tag")));
		
		request.getRequestDispatcher("dummy.jsp").forward(request,  response);
		System.out.println(request.getParameter("tag"));
	}
	
	public void addPhoto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PhotoService ps = new PhotoService();
		request.setAttribute("Photo", ps.getPhotos());
		
		request.getRequestDispatcher("dummy.jsp").forward(request, response);
	}
}