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
@WebServlet(urlPatterns= {"/upload", "/photoSearch"})
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
		String urlpattern = request.getServletPath();
		System.out.println("PHOTOSERVLET:  " + urlpattern);
		switch(urlpattern) {
			case "/photoSearch": filterByTag(request, response);
				                 break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String urlpattern = request.getServletPath();
		
		System.out.println("PHOTOSERVLET (POST): " + urlpattern);
		switch(urlpattern) {
		case"/upload": addPhoto(request, response);
								break;
		}
	}
	
	public void filterByTag(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		PhotoService ps = new PhotoService();
		request.setAttribute("Photo", ps.filterByTag(request.getParameter("tag")));
		
		request.getRequestDispatcher("searchResult.jsp").forward(request,  response);
		System.out.println(request.getParameter("tag"));
	}
	
	public void addPhoto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PhotoService ps = new PhotoService();
		request.setAttribute("Photo", ps.getPhotos());
		
		System.out.println(request.getParameter("pic"));
		System.out.println("I added photos.");

		response.sendRedirect("profile.jsp");
	}
}