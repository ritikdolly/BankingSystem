package Bank.Ctrls;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import Bank.Dao.Manager.StaffRegisterDao;
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

        if (action == null || action.isEmpty()) {
            action = "all"; // Default action if no action is provided
        }
        switch (action) {
            case "moreDetail":
                moreStaffDetails(request, response);
                break;
            case "update":
                updateStaff(request, response);
                break;
            case "delete":
                deleteStaff(request, response);
                break;
            case "all":
                System.out.println("in case..(all) switch method");
                allStaff(request, response);
                break;
            default:
                allStaff(request, response);
                break;
        }
    }

    private void updateStaff(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
    	AddStaff addStaff = new AddStaff();
        addStaff.setFname(request.getParameter("fname"));
        addStaff.setLname(request.getParameter("lname"));
        addStaff.setDob(request.getParameter("dob"));
        addStaff.setFatherName(request.getParameter("fatherName"));
        addStaff.setAddress(request.getParameter("address"));
        addStaff.setCity(request.getParameter("city"));
        addStaff.setPhoneNumber(request.getParameter("phoneNumber"));
        addStaff.setEmail(request.getParameter("email"));
        addStaff.setEmergencyNo(request.getParameter("emergencyNo"));
        addStaff.setPosition(request.getParameter("position"));
        addStaff.setWorkschedule(request.getParameter("workschedule"));
        addStaff.setReference1(request.getParameter("reference1"));
        addStaff.setRefrelation1(request.getParameter("refrelation1"));
        addStaff.setRefphno1(request.getParameter("refphno1"));
        addStaff.setRefemail1(request.getParameter("refemail1"));
        addStaff.setReference2(request.getParameter("reference2"));
        addStaff.setRefrelation2(request.getParameter("refrelation2"));
        addStaff.setRefphno2(request.getParameter("refphno2"));
        addStaff.setRefemail2(request.getParameter("refemail2"));       

        if (dao.updateStaffAcc(addStaff)) {
            System.out.println("Successfully Updated....!");
            response.sendRedirect(request.getContextPath() + "/staffModify");
        } else {
            System.out.println("Something went wrong, we can't update");
            response.sendRedirect(request.getContextPath() + "/staffModify");
        }
    }

    private void moreStaffDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String empId = request.getParameter("id");
        if (empId != null && !empId.isEmpty()) {
            if (dao.moreAboutStaff(empId)) {
                request.getRequestDispatcher("StaffInfo.jsp").forward(request, response);
            } else {
                System.out.println("Something went wrong!");
                response.sendRedirect(request.getContextPath() + "/staffModify");
            }
        } else {
            System.out.println("Invalid Employee ID!");
            response.sendRedirect(request.getContextPath() + "/staffModify");
        }
    }

    private void deleteStaff(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String empId = request.getParameter("id");
        if (empId != null && dao.deleteStaff(empId)) {
            System.out.println("Deleted Successfully...!");
        } else {
            System.out.println("Oops! There is some issue....");
        }
        response.sendRedirect(request.getContextPath() + "/staffModify");
    }

    private void allStaff(HttpServletRequest request, HttpServletResponse response) {
        try {
            // Fetch staff records
            List<AddStaff> listStaff = dao.selectAllEmp();
            
            if (listStaff == null || listStaff.isEmpty()) {
                System.out.println("No staff found or list is null.");
                response.sendRedirect(request.getContextPath() + "/errorPage.jsp");  // Redirect to an error page
            } else {
                // Print staff details in the servlet
                for (AddStaff addStaff : listStaff) {
                    System.out.println(addStaff.getEmpid() + " " + addStaff.getFname() + " " + addStaff.getLname() + " " + addStaff.getPosition());
                }
                System.out.println("No. of Employee: " + listStaff.size());

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
