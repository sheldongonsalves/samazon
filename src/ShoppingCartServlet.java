

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
import model.Samazon;
/**
 * Servlet implementation class ShoppingCartServlet
 */
@WebServlet("/ShoppingCartServlet")
public class ShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public ShoppingCartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Samazon sam=new Samazon();
		DatabaseConnect db= new DatabaseConnect();
		HttpSession session= request.getSession();
		String productId= request.getParameter("productId");  
		List <Samazon> shoppinglist= new ArrayList<Samazon>();
		
		String productName = request.getParameter("productName");
		String productPrice= request.getParameter("productPrice");
		sam.setProductname(productName);
		sam.setProductprice(Long.parseLong(productPrice));
		System.out.println(productName+"----------------"+productPrice);
		
		shoppinglist.add(sam);

		session.setAttribute("shoppinglist", shoppinglist);

		request.getRequestDispatcher("/shoppingCart.jsp").forward(request, response);

	}

}
