

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DatabaseConnect;
import model.Samazon;

/**
 * Servlet implementation class ProductDetailsServlet
 */
@WebServlet("/ProductDetailsServlet")
public class ProductDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductDetailsServlet() {
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

		

		Samazon sam=new Samazon();
		DatabaseConnect db= new DatabaseConnect();
		HttpSession session= request.getSession();
		
		
		
		String productId= request.getParameter("productId");  
		
		

		List<Samazon> productdetail=db.getProdDetails(productId).getResultList(); // add user_input

       session.setAttribute("productdetails", productdetail);
		
		request.getRequestDispatcher("/product.jsp").forward(request, response);

	}

}
