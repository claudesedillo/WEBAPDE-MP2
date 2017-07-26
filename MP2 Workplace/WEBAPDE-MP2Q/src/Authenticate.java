

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class Authenticate
 */
@WebFilter(urlPatterns= {"/success.jsp", "/mainfeed.jsp", "/alreadyLogged.jsp"})
public class Authenticate implements Filter {

    /**
     * Default constructor. 
     */
    public Authenticate() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		String url = req.getServletPath();
		
		System.out.println("I am called");
		System.out.println(req.getSession().getAttribute("un"));

		if((url.equals("/success.jsp") || url.equals("/mainfeed.jsp") || url.equals("/alreadyLogged.jsp"))) 
			if( req.getSession().getAttribute("un") != null)
				chain.doFilter(request, response);
			else
				//res.sendRedirect("Access-Denied.html");
				req.getRequestDispatcher("Access-Denied.html").forward(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
