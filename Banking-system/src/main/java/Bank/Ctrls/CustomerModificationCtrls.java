package Bank.Ctrls;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import Bank.Dao.Staff.CustomerRegisterDao;
import Bank.Model.AddCustomer;


@WebServlet("/customerModify")
public class CustomerModificationCtrls extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerRegisterDao userDao = null;

	public void init() {
		userDao = new CustomerRegisterDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		try {
			switch (action) {
			case "moreDetails":
				showMoreDetails(request, response);
				break;
			case "delete":
				deleteUser(request, response);
				break;
			case "edit":
				showEditForm(request, response);
				break;
			case "update":
				try {
					updateUser(request, response);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				} 
				break;
			case "deposit":
                depositMoney(request, response);
                break;
			case "list":
				listUser(request, response);
				break;
			default:
				listUser(request, response);
				break;
			}
		} catch (SQLException | ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}

	// Listing all users
	  private void listUser(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, ClassNotFoundException, SQLException {
			List<AddCustomer> listUser = userDao.listUser();
			request.setAttribute("listUser", listUser);
			RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerList.jsp");
			dispatcher.forward(request, response);
	  }
			
	// Updating user details
	private void updateUser(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException, ServletException {
		// Retrieving data from request parameters
		String custId = request.getParameter("custId");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String dob = request.getParameter("dob");
		String fathername = request.getParameter("fatherName");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phoneNumber");
		String address = request.getParameter("address");
		int pincode = Integer.parseInt(request.getParameter("pincode"));
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String district = request.getParameter("district");
		String nominee1 = request.getParameter("nominee1");
		String relationship1 = request.getParameter("relationship1");
		String phonenum1 = request.getParameter("phno1");
		String email1 = request.getParameter("email1");
		String nominee2 = request.getParameter("nominee2");
		String relationship2 = request.getParameter("relationship2");
		String phonenum2 = request.getParameter("phno2");
		String email2 = request.getParameter("email2");
		
		if (custId == null || custId.isEmpty()) {
            request.setAttribute("error", "Customer ID is required.");
            request.getRequestDispatcher("CustomerEdit.jsp").forward(request, response);
            return;
        }

		// Creating a user model and updating it in the database
		AddCustomer user = new AddCustomer(custId,firstname, lastname, dob, fathername, email, phonenumber, address ,pincode,city,
				state,district,nominee1, relationship1, phonenum1, email1, nominee2, relationship2, phonenum2, email2);
		  boolean isUpdated = userDao.updateUser(user);

	        // Redirect with success or error feedback
	        if (isUpdated) {
	            request.setAttribute("success", "Customer updated successfully.");
	        } else {
	            request.setAttribute("error", "Failed to update the customer.");
	        }
	        response.sendRedirect(request.getContextPath() + "/customerModify?action=list");
	}

	// Deleting a user by customer ID
	  private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException {
	        String custId = request.getParameter("CustId");
	        if (custId != null && userDao.deleteUser(custId)) {
	            System.out.println("Deleted Successfully...!");
	        } else {
	            System.out.println("Oops! There is some issue....");
	        }
	        response.sendRedirect(request.getContextPath() + "/customerModify?action=list");
	    }

	// Showing form to edit user information
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException, SQLException {
		String custId = request.getParameter("CustId");
		AddCustomer customer = userDao.editAddCustomer(custId);
		if (customer != null) {
			request.setAttribute("firstname", customer.getFirstname());
			request.setAttribute("lastname", customer.getLastname());
			request.setAttribute("dob", customer.getDob());
			request.setAttribute("fatherName", customer.getFathername());
			request.setAttribute("email", customer.getEmail());
			request.setAttribute("phoneNumber", customer.getPhonenumber());
			request.setAttribute("address", customer.getAddress());
			request.setAttribute("pincode", customer.getPincode());
			request.setAttribute("city", customer.getCity());
			request.setAttribute("state", customer.getState());
			request.setAttribute("district", customer.getDistrict());
			request.setAttribute("nominee1", customer.getNominee1());
			request.setAttribute("relationship1", customer.getRelationship1());
			request.setAttribute("phonenum1", customer.getPhonenum1());
			request.setAttribute("email1", customer.getEmail1());
			request.setAttribute("nominee2", customer.getNominee2());
			request.setAttribute("relationship2", customer.getRelationship2());
			request.setAttribute("phonenum2", customer.getPhonenum2());
			request.setAttribute("email2", customer.getEmail2());
			request.setAttribute("custId", customer.getCustId());
			request.getRequestDispatcher("CustomerEdit.jsp").forward(request, response);
		  } else {
              System.out.println("Something went wrong!");
//              response.sendRedirect(request.getContextPath() + "/customerModify");
          }
      } 

	// Showing more details about a specific customer
	private void showMoreDetails(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException, ClassNotFoundException, SQLException {
	    String custId = request.getParameter("CustId");
	    AddCustomer customer = userDao.moreAboutCustomer(custId);

	    if (customer != null) {
	        request.setAttribute("firstname", customer.getFirstname());
	        request.setAttribute("lastname", customer.getLastname());
	        request.setAttribute("gender", customer.getGender());
	        request.setAttribute("dob", customer.getDob());
	        request.setAttribute("fatherName", customer.getFathername());
	        request.setAttribute("nationality", customer.getNationality());
	        request.setAttribute("address", customer.getAddress());
	        request.setAttribute("city", customer.getCity());
	        request.setAttribute("district", customer.getDistrict());
	        request.setAttribute("state", customer.getState());
	        request.setAttribute("pinCode", customer.getPincode());
	        request.setAttribute("phoneNo", customer.getPhonenumber());
	        request.setAttribute("aadhaarNo", customer.getAadhaarno());
	        request.setAttribute("panNo", customer.getPanno());
	        request.setAttribute("email", customer.getEmail());
	        request.setAttribute("accountType", customer.getAccounttype());
	        request.setAttribute("nominee1", customer.getNominee1());
	        request.setAttribute("relationship1", customer.getRelationship1());
	        request.setAttribute("phonenum1", customer.getPhonenum1());
	        request.setAttribute("email1", customer.getEmail1());
	        request.setAttribute("nominee2", customer.getNominee2());
	        request.setAttribute("relationship2", customer.getRelationship2());
	        request.setAttribute("phonenum2", customer.getPhonenum2());
	        request.setAttribute("email2", customer.getEmail2());

	        request.getRequestDispatcher("CustomerInfo.jsp").forward(request, response);
	    } else {
	        request.setAttribute("msg", "Customer not found!");
	        request.getRequestDispatcher("CustomerCreate.jsp").forward(request, response);
	    }
	}
	

	// New method to handle money deposit
	private void depositMoney(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException, ClassNotFoundException, SQLException {
	    String custId = request.getParameter("custId");
	    double amount = Double.parseDouble(request.getParameter("amount"));

	    if (custId == null || custId.isEmpty() || amount <= 0) {
	        request.setAttribute("error", "Invalid customer ID or amount.");
	        request.getRequestDispatcher("CustomerDeposit.jsp").forward(request, response);
	        return;
	    }

	    // Update balance in the database
	    boolean isDeposited = userDao.depositMoney(custId, amount);

	    // Provide feedback based on success or failure
	    if (isDeposited) {
	        request.setAttribute("success", "Amount deposited successfully.");
	        System.out.println("deposite succesfully");
	    } else {
	        request.setAttribute("error", "Failed to deposit the amount.");
	    }

	    response.sendRedirect(request.getContextPath() + "/customerModify?action=list");
	}


}
