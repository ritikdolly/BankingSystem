package Bank.Ctrls;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import Bank.Dao.Manager.StaffRegisterDao;
import Bank.Model.UserInfoModels;
import Bank.Model.staff.AddStaff;

@WebServlet("/staffModify")
public class StaffModificationControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private StaffRegisterDao dao;

    public void init() throws ServletException {
        dao = new StaffRegisterDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action"); // Retrieve action from query parameter
        System.out.println("Requested action: " + action);

        // set http Session
        HttpSession session=  request.getSession();
        
        if (action == null || action.isEmpty()) {
            action = "all"; // Default action if no action is provided
        }
        switch (action) {
        	case "home":
        		String mainUser=request.getParameter("mainUser");
        		System.out.println("in staff reg ctrl main user= "+mainUser);
        		//set main userId
                request.setAttribute("mainUser", mainUser);
                session.setAttribute("mainUser", mainUser);
        		request.getRequestDispatcher("ManagerAccess.jsp").forward(request, response);
        		break;
            case "moreDetail":
                moreStaffDetails(request, response);
                break;
            case "edit":
            	editStaff(request,response);
            	break;
            case "update":
			try {
				updateStaff(request, response);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
                break;
            case "delete":
                deleteStaff(request, response);
                break;
            case "all":
            	
                allStaff(request, response);
                break;
            case "mainUserDetail":
            	mainUserDetail(request,response);
            	break;
            case "createStaff":
            	String mainUser1 =request.getParameter("mainUser");
        		System.out.println("in staff reg ctrl main user= "+mainUser1);
        		//set main userId
                request.setAttribute("mainUser", mainUser1);
                session.setAttribute("mainUser", mainUser1);
        		request.getRequestDispatcher("staffRegisterIndex.jsp").forward(request, response);
            	break;
            default:
                allStaff(request, response);
                break;
        }
    }
    
    
  //get Main User Detail.....
    private void mainUserDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mainUser=request.getParameter("mainUser");
		System.out.println("in staff reg ctrl main user= "+mainUser);
		UserInfoModels info= dao.getMainUserDetail(mainUser);
		
		
		if (info != null) {
			request.setAttribute("mainUserInformation", info);
			//set main userId
            request.setAttribute("mainUser", mainUser);
         // set http Session
            HttpSession session=  request.getSession();
            session.setAttribute("mainUser", mainUser);
			request.getRequestDispatcher("UserInfo.jsp").forward(request, response);
		}
		else {
			String msg="Issue in mainUSerDetail in staff reg ctrls..!";
			System.out.println(msg);
		}
	}

	
    		
    		
    		
    //sending data to jsp page
    private void editStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String empId = request.getParameter("id");
    	String mainUser=request.getParameter("mainUser");
    	System.out.println("EmpID: "+ empId);
    	AddStaff staff = dao.editStaffRetrieve(empId);
    	
    	// set http Session
        HttpSession session=  request.getSession();
        session.setAttribute("mainUser", mainUser);
    	if(staff != null) {
        	request.setAttribute("fname", staff.getFname());
        	request.setAttribute("lname", staff.getLname());
        	request.setAttribute("dob",staff.getDob());
        	request.setAttribute("fatherName", staff.getFatherName());
           	request.setAttribute("address", staff.getAddress());
        	request.setAttribute("city", staff.getCity());
        	request.setAttribute("phoneNo", staff.getPhoneNumber());
        	request.setAttribute("email", staff.getEmail());
        	request.setAttribute("emergencyNO", staff.getEmergencyNo());
        	request.setAttribute("position", staff.getPosition());
        	request.setAttribute("workschedule", staff.getWorkschedule());
        	request.setAttribute("refName1", staff.getReference1());
        	request.setAttribute("relation1",staff.getRefrelation1());
        	request.setAttribute("refPhNo1", staff.getRefphno1());
        	request.setAttribute("refEmail1",staff.getRefemail1());
        	request.setAttribute("refName2", staff.getReference2());
        	request.setAttribute("relation2",staff.getRefrelation2());
        	request.setAttribute("refPhNo2", staff.getRefphno2());
        	request.setAttribute("refEmail2",staff.getRefemail2());
    		request.setAttribute("empId", staff.getEmpid()); 
    		//set main userId
                request.setAttribute("mainUser", mainUser);
    		System.out.println("EmpID instaffmodiCTRL in EDit 2: "+ staff.getEmpid());
    		request.getRequestDispatcher("staffEdit.jsp").forward(request, response);
    		
    	}else {
    		System.out.println("Error in Staff ModifyControlls");
    		request.getRequestDispatcher("Staff-list.jsp").forward(request, response);
    	}
	}
    
    
    private void updateStaff(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException {
    	String mainUser=request.getParameter("mainUser");
    	String id = request.getParameter("id");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String dob = request.getParameter("dob");
        String fatherName = request.getParameter("fatherName");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String phoneNumber = request.getParameter("phoneNumber");
        String emergencyNo = request.getParameter("emergencyNo");
        String email = request.getParameter("email");
        String position = request.getParameter("position");
        String workschedule = request.getParameter("workschedule");
        String refName1 = request.getParameter("reference1");
        String relation1 = request.getParameter("refrelation1");
        String refPhNo1 = request.getParameter("refphno1");
        String refEmail1 = request.getParameter("refemail1");
        String refName2 = request.getParameter("reference2");
        String relation2 = request.getParameter("refrelation2");
        String refPhNo2 = request.getParameter("refphno2");
        String refEmail2 = request.getParameter("refemail2");

        AddStaff staff = new AddStaff(id, fname, lname, dob, fatherName, address, city, phoneNumber, emergencyNo, email, position, workschedule, refName1, relation1, refPhNo1, refEmail1, refName2, relation2, refPhNo2, refEmail2);        
     // set http Session
        HttpSession session=  request.getSession();
        session.setAttribute("mainUser", mainUser);
        if (dao.updateStaff(staff)) {
            System.out.println("Successfully Updated....!");
            response.sendRedirect(request.getContextPath() + "/staffModify?action=all&mainUser="+mainUser);
        } else {
            System.out.println("Something went wrong, we can't update");
            response.sendRedirect(request.getContextPath() + "/staffModify?action=all&mainUser="+mainUser);
        }
    }

    private void moreStaffDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String empId = request.getParameter("id");
        String mainUser=request.getParameter("mainUser");
        System.out.println("in staffModify moreStaffDetail mainUser= "+mainUser);
        System.out.println("EmpID: "+empId);
        AddStaff addstaff = dao.moreAboutStaff(empId);
      //set main userId
        request.setAttribute("mainUser", mainUser);
     // set http Session
        HttpSession session=  request.getSession();
        session.setAttribute("mainUser", mainUser);
        if (empId != null && !empId.isEmpty()) {
            if (addstaff != null) {
	        	request.setAttribute("empId", empId);
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
            } else {
                System.out.println("Something went wrong!");
                response.sendRedirect(request.getContextPath() + "/staffModify&mainUser="+mainUser);
            }
        } else {
            System.out.println("Invalid Employee ID!");
            response.sendRedirect(request.getContextPath() + "/staffModify&mainUser="+mainUser);
        }
    }

    private void deleteStaff(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String empId = request.getParameter("id");
        String mainUser=request.getParameter("mainUser");
     // set http Session
        HttpSession session=  request.getSession();
        session.setAttribute("mainUser", mainUser);
        if (empId != null && dao.deleteStaff(empId)) {
            System.out.println("Deleted Successfully...!");
        } else {
            System.out.println("Oops! There is some issue....");
        }
        response.sendRedirect(request.getContextPath() + "/staffModify&mainUser="+mainUser);
    }

    private void allStaff(HttpServletRequest request, HttpServletResponse response) {
        try {
        	//retrive main user ID
        	String mainUser=request.getParameter("mainUser");
            // Fetch staff records
            List<AddStaff> listStaff = dao.selectAllEmp();
         // set http Session
            HttpSession session=  request.getSession();
            session.setAttribute("mainUser", mainUser);
            if (listStaff == null || listStaff.isEmpty()) {
                System.out.println("No staff found or list is null.");
                response.sendRedirect(request.getContextPath() + "/errorPage.jsp");  // Redirect to an error page
            } else {
                // Print staff details in the servlet
                for (AddStaff addStaff : listStaff) {
                    System.out.println(addStaff.getEmpid() + " " + addStaff.getFname() + " " + addStaff.getLname() + " " + addStaff.getPosition());
                }
                System.out.println("No. of Employee: " + listStaff.size());

                //set main userId
                request.setAttribute("mainUser", mainUser);
                // Set the list as a request attribute and forward to the JSP
                request.setAttribute("listStaff", listStaff);
                request.getRequestDispatcher("Staff-list.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error occurred while fetching staff records.");
        }
    }


}
