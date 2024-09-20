package Bank.Ctrls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import Bank.Dao.Manager.StaffRegisterDao;
import Bank.Model.staff.AddStaff;

/**
 * Servlet implementation class StaffregistrationControl
 */
@WebServlet("/staffRegistor")
public class StaffregistrationControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in staff Register..file");
		boolean forwordToStaffRegisterIndex = true;
		String msg = null;
		try{
			AddStaff addstaff =new AddStaff();
			
			addstaff.setFname(request.getParameter("fname"));
			addstaff.setLname(request.getParameter("lname"));
			addstaff.setGender(request.getParameter("gender"));
			addstaff.setDob(request.getParameter("dob"));
			addstaff.setFatherName(request.getParameter("fatherName"));
			addstaff.setNationally(request.getParameter("nationality"));
			addstaff.setAddress(request.getParameter("address"));
			addstaff.setCity(request.getParameter("city"));
			addstaff.setDistrict(request.getParameter("district"));
			addstaff.setState(request.getParameter("state"));
			addstaff.setPincode(Integer.parseInt(request.getParameter("pincode")));
			addstaff.setPhoneNumber(request.getParameter("phoneNumber"));
			addstaff.setEmail(request.getParameter("email"));
			addstaff.setEmergencyNo(request.getParameter("emergencyNo"));
			addstaff.setPosition(request.getParameter("position"));
			addstaff.setJoiningdate(request.getParameter("joiningdate"));
			addstaff.setWorkschedule(request.getParameter("workschedule"));
			addstaff.setAccountnumber(request.getParameter("accountnumber"));
			addstaff.setBankname(request.getParameter("bankname"));
			addstaff.setTaxId(request.getParameter("taxId"));
			addstaff.setAadharNo(request.getParameter("aadharNo"));
			addstaff.setPanNO(request.getParameter("panNo"));
			addstaff.setYear10(Integer.parseInt(request.getParameter("year10")));
			addstaff.setSchoolname10(request.getParameter("schoolname10"));
			addstaff.setTenthpercent(Integer.parseInt(request.getParameter("tenthpercent")));
			addstaff.setYear12(Integer.parseInt(request.getParameter("year12")));
			addstaff.setSchoolname12(request.getParameter("schoolname12"));
			addstaff.setTwelfthpercent(Integer.parseInt(request.getParameter("twelfthpercent")));
			addstaff.setDegreename(request.getParameter("degreename"));
			addstaff.setDegreeyear(Integer.parseInt(request.getParameter("degreeyear")));		
			addstaff.setCollegename(request.getParameter("collegename"));
			addstaff.setDegreepercent(Integer.parseInt(request.getParameter("degreepercent")));
			addstaff.setPreviousEmp(request.getParameter("previousEmp"));
			addstaff.setEmppostion(request.getParameter("empposition"));
			addstaff.setEmpduration(Integer.parseInt(request.getParameter("empduration")));
			addstaff.setLeavingreason(request.getParameter("leavingreason"));
			
			addstaff.setReference1(request.getParameter("reference1"));
			addstaff.setRefrelation1(request.getParameter("refrelation1"));
			addstaff.setRefphno1(request.getParameter("refphno1"));
			addstaff.setRefemail1(request.getParameter("refemail1"));
			
			addstaff.setReference2(request.getParameter("reference2"));
			addstaff.setRefrelation2(request.getParameter("refrelation2"));
			addstaff.setRefphno2(request.getParameter("refphno2"));
			addstaff.setRefemail2(request.getParameter("refemail2"));
			System.out.println("in staff registor ctrls line-1");
			//generate userId and Password
			Random random = new Random();
			int random3DigitNumber = ThreadLocalRandom.current().nextInt(1000, 10000);
			String name = addstaff.getFname();        
			String empid = (name + random3DigitNumber).replaceAll("\\s", ""); // Removes all spaces from empid
			addstaff.setEmpid(empid);
			
	        addstaff.setEmpid(name+random3DigitNumber);
	        System.out.println("in staff registor ctrls line-2");
	        // generate password
	        String upperCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	        String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
	        String numbers = "0123456789";
	        String specialCharacters = "!@#$%^&*_|:.?";
	        
	        // Combine all the characters
	        String combinedChars = upperCaseLetters + lowerCaseLetters + numbers + specialCharacters;
	
	
	        // Generate the random password
	        StringBuilder password = new StringBuilder(8);
	
	        for (int i = 0; i < 8; i++) {
	            int index = random.nextInt(combinedChars.length());
	            password.append(combinedChars.charAt(index));
	        }
	        addstaff.setPwd(password.toString());
	        
	        // object of dao file where we can store and connect to sql
	        StaffRegisterDao staffDao= new StaffRegisterDao();
	        
	        System.out.println("in staff registor ctrls line-3");
	        if(staffDao.addStaff(addstaff)) {
	        	msg="Data Successfully Inserted..!";
	        	forwordToStaffRegisterIndex= false;
	        	
	        	//set attribute for staff detail to display it in staffinfo.jsp
	        	request.setAttribute("empId", addstaff.getEmpid());
	        	request.setAttribute("pwd", addstaff.getPwd());
	        	request.setAttribute("fname", addstaff.getFname());
	        	request.setAttribute("lname", addstaff.getLname());
	        	request.setAttribute("gender", addstaff.getGender());
	        	request.setAttribute("dob", addstaff.getDob());
	        	request.setAttribute("fatherName", addstaff.getFatherName());
	        	request.setAttribute("nationally", addstaff.getNationally());
	        	request.setAttribute("address", addstaff.getAddress());
	        	request.setAttribute("city", addstaff.getCity());
	        	request.setAttribute("district", addstaff.getDistrict());
	        	request.setAttribute("state", addstaff.getState());
	        	request.setAttribute("pinCode", addstaff.getPincode());
	        	request.setAttribute("phoneNo", addstaff.getPhoneNumber());
	        	request.setAttribute("email", addstaff.getEmail());
	        	request.setAttribute("emergencyNO", addstaff.getEmergencyNo());
	        	request.setAttribute("postion", addstaff.getPosition());
	        	request.setAttribute("dateofJoin", addstaff.getJoiningdate());
	        	request.setAttribute("workschedule", addstaff.getWorkschedule());
	        	request.setAttribute("accNo", addstaff.getAccountnumber());
	        	request.setAttribute("bankName", addstaff.getBankname());
	        	request.setAttribute("taxId", addstaff.getTaxId());
	        	request.setAttribute("aadharNo", addstaff.getAadharNo());
	        	request.setAttribute("panNo", addstaff.getPanNO());
	        	request.setAttribute("year10", addstaff.getYear10());
	        	request.setAttribute("schoolName10", addstaff.getSchoolname10());
	        	request.setAttribute("tenthpercent", addstaff.getTenthpercent());
	        	request.setAttribute("year12", addstaff.getYear12());
	        	request.setAttribute("schoolName12", addstaff.getSchoolname12());
	        	request.setAttribute("twelthpercent", addstaff.getTwelfthpercent());
	        	request.setAttribute("degreeName", addstaff.getDegreename());
	        	request.setAttribute("degreeyear", addstaff.getDegreeyear());
	        	request.setAttribute("collegeName", addstaff.getCollegename());
	        	request.setAttribute("degreepercent", addstaff.getDegreepercent());
	        	request.setAttribute("previousEmp", addstaff.getPreviousEmp());
	        	request.setAttribute("empposition", addstaff.getEmppostion());
	        	request.setAttribute("empDuration", addstaff.getEmpduration());
	        	request.setAttribute("leavingreson", addstaff.getLeavingreason());
	        	request.setAttribute("refName1", addstaff.getReference1());
	        	request.setAttribute("relation1", addstaff.getRefrelation1());
	        	request.setAttribute("refPhNo1", addstaff.getRefphno1());
	        	request.setAttribute("refEmail1", addstaff.getRefemail1());
	        	request.setAttribute("refName2", addstaff.getReference2());
	        	request.setAttribute("relation2", addstaff.getRefrelation2());
	        	request.setAttribute("refPhNo2", addstaff.getRefphno2());
	        	request.setAttribute("refEmail2", addstaff.getRefemail2());
	           	
	        	request.getRequestDispatcher("StaffInfo.jsp").forward(request, response);
	        }else {
	        	msg ="Oops! there somethings want wrong....";
	        }
	        System.out.println(msg);
	        
        }catch (Exception e) {
			e.printStackTrace();
		}
		if(forwordToStaffRegisterIndex){
	        request.setAttribute("msg", msg);
			request.getRequestDispatcher("StaffRegisterIndex.jsp").forward(request, response);      
	        }
        
        /*
		System.out.println(addstaff.getFname());
		System.out.println(addstaff.getLname());
		System.out.println(addstaff.getGender());
		System.out.println(addstaff.getDob());
		System.out.println(addstaff.getFatherName());
		System.out.println(addstaff.getNationally());
		System.out.println(addstaff.getAddress());
		System.out.println(addstaff.getCity());
		System.out.println(addstaff.getDistrict());
		System.out.println(addstaff.getState());
		System.out.println(addstaff.getPincode());
		System.out.println(addstaff.getPhoneNumber());
		System.out.println(addstaff.getEmail());
		System.out.println(addstaff.getEmergencyNo());
		System.out.println(addstaff.getPostion());
		System.out.println(addstaff.getJoiningdate());
		System.out.println(addstaff.getWorkschedule());
		System.out.println(addstaff.getAccountnumber());
		System.out.println(addstaff.getBankname());
		System.out.println(addstaff.getTaxId());
		System.out.println(addstaff.getYear10());
		System.out.println(addstaff.getSchoolname10());
		System.out.println(addstaff.getTenthpercent());
		System.out.println(addstaff.getYear12());
		System.out.println(addstaff.getSchoolname12());
		System.out.println(addstaff.getTwelfthpercent());
		System.out.println(addstaff.getDegreename());
		System.out.println(addstaff.getDegreeyear());
		System.out.println(addstaff.getCollegename());
		System.out.println(addstaff.getDegreepercent());
		System.out.println(addstaff.getPreviousEmp());
		System.out.println(addstaff.getEmppostion());
		System.out.println(addstaff.getEmpduration());
		System.out.println(addstaff.getLeavingreason());
		System.out.println(addstaff.getReference1());
		System.out.println(addstaff.getRefrelation1());
		System.out.println(addstaff.getRefphno1());
		System.out.println(addstaff.getRefemail1());
		System.out.println(addstaff.getReference2());
		System.out.println(addstaff.getRefrelation2());
		System.out.println(addstaff.getRefphno2());
		System.out.println(addstaff.getRefemail2());
		System.out.println(addstaff.getEmpid());
		System.out.println(addstaff.getPwd());
		*/
	}
}