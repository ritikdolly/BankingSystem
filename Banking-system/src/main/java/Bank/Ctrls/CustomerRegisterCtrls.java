package Bank.Ctrls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import Bank.Dao.Staff.CustomerRegisterDao;
import Bank.Model.AddCustomer;

/**
 * Servlet implementation class CustomerRegisterCtrls
 */
@WebServlet("/CustomerRegistor")
public class CustomerRegisterCtrls extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String msg=null;
		try {
            AddCustomer ml = new AddCustomer();
            ml.setFirstname(request.getParameter("firstname"));
            ml.setLastname(request.getParameter("lastname"));
            ml.setGender(request.getParameter("gender"));
            ml.setDob(request.getParameter("dob"));
            ml.setFathername(request.getParameter("fatherName"));
            ml.setNationality(request.getParameter("nationality"));
            ml.setAddress(request.getParameter("address"));
            ml.setCity(request.getParameter("city"));
            ml.setDistrict(request.getParameter("district"));
            ml.setState(request.getParameter("state"));
            ml.setPincode(Integer.parseInt(request.getParameter("pinCode")));
            ml.setPhonenumber(request.getParameter("phoneNumber"));
            ml.setAadhaarno(request.getParameter("aadhaarNumber"));
            ml.setPanno(request.getParameter("panNumber"));
            ml.setEmail(request.getParameter("email"));
            ml.setAccounttype(request.getParameter("accounttype"));
            ml.setNominee1(request.getParameter("nominee1"));
            ml.setRelationship1(request.getParameter("relation1"));
            ml.setPhonenum1(request.getParameter("phno1"));
            ml.setEmail1(request.getParameter("email1"));
            ml.setNominee2(request.getParameter("nominee2"));
            ml.setRelationship2(request.getParameter("relation2"));
            ml.setPhonenum2(request.getParameter("phno2"));
            ml.setEmail2(request.getParameter("email2"));

            // Generate Account Number automatically
            Random random = new Random();
            int random5DigitNumber = ThreadLocalRandom.current().nextInt(10000, 100000);
            String accNo = "360012" + random5DigitNumber;
            ml.setAccountNo(accNo);

            // Generate CustId automatically
            int random3DigitNumber = ThreadLocalRandom.current().nextInt(1000, 10000);
            String name = ml.getFirstname();
            String username = (name + random3DigitNumber).replaceAll("\\s", "");
            ml.setUsername(username);

            // Generate password automatically
            String upperCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
            String numbers = "0123456789";
            String specialCharacters = "!@#$%^&*_|:.?";
            String combinedChars = upperCaseLetters + lowerCaseLetters + numbers + specialCharacters;

            StringBuilder password = new StringBuilder(8);
            for (int i = 0; i < 8; i++) {
                int index = random.nextInt(combinedChars.length());
                password.append(combinedChars.charAt(index));
            }
            ml.setPassword(password.toString());

            CustomerRegisterDao userDao = new CustomerRegisterDao();
            boolean isAdded = userDao.addModel(ml);

            if (isAdded) {
                msg = "Customer information successfully registered!";
                request.setAttribute("username", ml.getUsername());
                request.setAttribute("password", ml.getPassword());
                request.setAttribute("accNo", ml.getAccountNo());
                request.setAttribute("firstname", ml.getFirstname());
                request.setAttribute("lastname", ml.getLastname());
                request.setAttribute("gender", ml.getGender());
                request.setAttribute("dob", ml.getDob());
                request.setAttribute("fatherName", ml.getFathername());
                request.setAttribute("nationality", ml.getNationality());
                request.setAttribute("address", ml.getAddress());
                request.setAttribute("city", ml.getCity());
                request.setAttribute("district", ml.getDistrict());
                request.setAttribute("state", ml.getState());
                request.setAttribute("pincode", ml.getPincode());
                request.setAttribute("phoneNumber", ml.getPhonenumber());
                request.setAttribute("aadhaarNo", ml.getAadhaarno());
                request.setAttribute("panNo", ml.getPanno());
                request.setAttribute("email", ml.getEmail());
                request.setAttribute("accounttype", ml.getAccounttype());
                request.setAttribute("nominee1", ml.getNominee1());
                request.setAttribute("relationship1", ml.getRelationship1());
                request.setAttribute("phonenum1", ml.getPhonenum1());
                request.setAttribute("email1", ml.getEmail1());
                request.setAttribute("nominee2", ml.getNominee2());
                request.setAttribute("relationship2", ml.getRelationship2());
                request.setAttribute("phonenum2", ml.getPhonenum2());
                request.setAttribute("email2", ml.getEmail2());
                request.setAttribute("custId ", ml.getCustId());
                request.getRequestDispatcher("CustomerInfo.jsp").forward(request, response);
            } else {
                msg = "Oops! Something went wrong while registering customer data.";
            }

        } catch (Exception e) {
            e.printStackTrace();
            msg = "Error occurred: " + e.getMessage();
        }

        if (msg != null) {
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("CustomerRegister.jsp").forward(request, response);
        }

	}

}
