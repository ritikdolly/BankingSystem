package Bank.Ctrls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Bank.Dao.BankingDao;
import Bank.Model.AddInformation;


@WebServlet("/userLogin")
public class BankingControls extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        String enteredCaptcha = request.getParameter("outCaptch");
        String sessionCaptcha = (String) session.getAttribute("captcha");
        String msg =null;
        boolean forwardToLogin = true;
        
        if (enteredCaptcha != null && enteredCaptcha.equals(sessionCaptcha)) {
		//Create object of AddDetail class we use set a data on it...
        	AddInformation addCust = new AddInformation();
    		BankingDao dao = new BankingDao();
    		//System.out.println("in banking Control File....!");// comment....
    		
    		addCust.setClintUserId(request.getParameter("userId"));
    		addCust.setClientPassword(request.getParameter("password"));
    		
    		if(dao.loginUsers(addCust)) {
    			
		        System.out.println(addCust.getClintUserId()+" in clientSide");
	    		System.out.println(addCust.getClientPassword()+" in clientside");
	    		System.out.println(addCust.getServerUserId()+" in serverSide");
	    		System.out.println(addCust.getServerPassword()+" in serverSide");
    		if(addCust.getClientPassword().equals(addCust.getServerPassword())
    				&& addCust.getClintUserId().equals(addCust.getServerUserId())){
    							
				String type=addCust.getType();
				
				switch (type) {
				case "admin": 
					System.out.println(type);
					request.getRequestDispatcher("ManagerAccess.jsp").forward(request, response);
					forwardToLogin = false; 
					break;
				case "staff":
					System.out.println(type);
					request.getRequestDispatcher("StaffAccess.jsp").forward(request, response);
					forwardToLogin = false; 
					break;
				case "customer":
					System.out.println(type);
					request.getRequestDispatcher("CustomerAcess.jsp").forward(request, response);
					forwardToLogin = false; 
					break;
				default:
					System.out.println("Worng type....!");
					break;
				}	
				
    		}else {
				msg = "Oops! Wrong userId or Password";
				}
    		}else {
    			msg = "Oops! Wrong userId or Password";
    			}
			}else {
				msg = "Invalid Captcha";
			}
        
           if(forwardToLogin ) {
        	   request.setAttribute("msg", msg);
           		request.getRequestDispatcher("loginPage.jsp").forward(request, response);
           }

	}

}
