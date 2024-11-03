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
		case "checkAmount":
			System.out.println("in Customr Ctrls check Balance line  -2");
			checkBalance(request,response,session);			
			break;
		case "startWithdraw":
			String CustId2= request.getParameter("CustId");
			//set main userId
			request.setAttribute("mainUser", CustId2);
            session.setAttribute("mainUser", CustId2);
			request.getRequestDispatcher("withdrawMoney.jsp").forward(request, response);		
			break;
		default:
			
			break;
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		HttpSession session= request.getSession();
		
		switch (action) {
		case "dotransfer":
			System.out.println("in Customr Ctrls tranfer line  -2");
			doTransfer(request,response,session);			
			break;
		case "dowithdraw":
			dowithdraw(request,response,session);
			break;
			default:
					
					break;
		}	
		
		
	}

	
	private void checkBalance(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ServletException, IOException {
		
		
		String CustId= request.getParameter("CustId");
		CustomerModel model = new CustomerModel(); 
		model.setSenderCustId(CustId);
		if(dao.checkBalance(model) != null) {
			request.setAttribute("fName", model.getSenderFName());
			request.setAttribute("lName", model.getSenderLName());
			request.setAttribute("AccNo", model.getSenderAccNo());
			request.setAttribute("balance", model.getSenderBalance());
			request.getRequestDispatcher("checkBalance.jsp").forward(request, response);
		}else {
			System.out.println("Some Wrong in cust All ctrl File.");
		}
		
		
	}

//for check customer balance
	

	
	private void dowithdraw(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ServletException, IOException {
		String CustId= request.getParameter("mainUser");
		String pwd= request.getParameter("pwd");
		int amount=Integer.parseInt(request.getParameter("amount"));
		
		System.out.println("in customer Ctrl post custID: "+CustId);
		System.out.println("in customer Ctrl post pwd: "+pwd);
		System.out.println("in customer Ctrl post Amount: "+amount);
		String msg =dao.withdrawMoney(CustId, pwd, amount);
		System.out.println(msg);
		if(msg != null) {
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("Successfull.jsp").forward(request, response);
	}
	
}


	public void doTransfer(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws ServletException, IOException {
		String CustId= request.getParameter("CustId");
		CustomerModel model = new CustomerModel(); 
		model.setSenderCustId(CustId);
		model.setReceiverAccNo(request.getParameter("receiverAccount"));
		model.setReceiverFName(request.getParameter("receiverName"));
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

