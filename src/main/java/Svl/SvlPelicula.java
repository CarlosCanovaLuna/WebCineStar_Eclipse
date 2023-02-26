package Svl;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;



import dao.PeliculaDAO;


public class SvlPelicula extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SvlPelicula() {
        super();
        
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		Object data = null;
		if(id!=null ){
			if(id.equals("cartelera")|| id.equals("estrenos"))  
		 data = new PeliculaDAO().getPeliculas(id.equals("cartelera")? 1 : 2,true);
		 else data = new PeliculaDAO().getPelicula(id,true);
		 
		session.setAttribute("id", data == null ? null:id.equals("cartelera")|| id.equals("estrenos")? "Peliculas" : "Pelicula");
		session.setAttribute("data", data);		
	}
    response.sendRedirect("index.jsp");

}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
