package Bank.Ctrls;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Bank.Dao.Customer.customerDao;
import Bank.Model.customer.CustomerModel;

/**
 * Servlet implementation class CustomerAllCtrls
 */
@WebServlet("/customerCtrls")
public class CustomerAllCtrls extends HttpServlet {
	private static final long serialVersionUID = 1L;
	customerDao dao=null;
	
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		dao= new customerDao();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		HttpSession session= request.getSession();
		
		switch (action) {
		case "startTransfer":
			String CustId= request.getParameter("CustId");
			//set main userId
            request.setAttribute("mainUser", CustId);
            session.setAttribute("mainUser", CustId);
			request.getRequestDispatcher("tranferMoney.jsp").forward(request, response);
			break;
		case "dotransfer":
			System.out.println("in Customr Ctrls tranfer line  -2");
			doTransfer(request,response,session);			
			break;
		default:
			
			break;
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	
	public void doTransfer(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws ServletException, IOException {
		String CustId= request.getParameter("CustId");
		CustomerModel model = new CustomerModel(); 
		model.setSenderCustId(CustId);
		model.setReceiverAccNo(request.getParameter("receiverAccount"));
		model.setReceiverName(request.getParameter("receiverName"));
		model.setSenderBalance(Integer.parseInt(request.getParameter("amount")));
		System.out.println("in Customr Ctrls tranfer line  -2");
		String msg = dao.getTransaction(model);
		System.out.println("in ctrls file " + msg);
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("Successfull.jsp").forward(request, response);

//		//set main userId
//        request.setAttribute("mainUser", CustId1);
//        session.setAttribute("mainUser", CustId1);
	}
}
