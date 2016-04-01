

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DatabaseConnect;
import model.Samazon;;

/**
 * Servlet implementation class SamazonServlet
 */
@WebServlet("/SamazonServlet")
public class SamazonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SamazonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session= request.getSession();
		Samazon sam=new Samazon();
		DatabaseConnect db= new DatabaseConnect();
		List<Samazon> productlist=db.connection2().getResultList();
		
		
		
		session.setAttribute("productlist",productlist);
		

		System.out.println(productlist);
		request.getRequestDispatcher("/productlist.jsp").forward(request, response);
	
	}

}
