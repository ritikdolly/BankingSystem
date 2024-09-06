package Bank.Dao.Manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bank.Model.staff.AddStaff;

public class StaffRegisterDao {
	//get SQl connection...
		public static Connection getConnection() throws ClassNotFoundException, SQLException {
			String url="jdbc:mysql://localhost:3306/banking_system";
			String user="root123";
			String pwd="root123";
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(url,user,pwd);	
		}
	
	public boolean addStaff(AddStaff addstaff) {
		Connection con = null;
		PreparedStatement st =null;
		boolean flag = false;
		String query1="INSERT INTO login (UserId, password, UserName, type) VALUES (?, ?, ?, 'staff');";
		
		String query2="INSERT INTO staff (fname, lname, gender, dob, fatherName, nationality, address, city, district, state, pincode, phoneNo, email, emergencyNO, position, joiningdate, workSchedule, accountNo, bankName, taxId, aadharNo, panNO, tenthPassYear, schoolName10, tenthPercent, twelfthPassYear, schoolName12, twelfthpercent, degreeName, degreepassYear, collegeName, degreepercent, previousEmp, empposition, empduration, leavingreason, reference1, refrelation1, refphNo1, refemail1, reference2, refrelation2, refphNo2, refemail2, EmpId) VALUES (?, ?, ?, ?, ?,?, ?, ?, ?, ?,?,?,?,?,?,?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
		System.out.println("in staff dao outside try block");
		try {
			con =StaffRegisterDao.getConnection();
			System.out.println("in staff dao line-1");
			con.setAutoCommit(false);
			st =con.prepareStatement(query1);
			System.out.println("in staff dao line-2");
			st.setString(1, addstaff.getEmpid());
			st.setString(2,addstaff.getPwd());
			st.setString(3, addstaff.getFname());
			int value = st.executeUpdate();
			System.out.println("in staff dao line-3");
			if(value == 1) {
				st =con.prepareStatement(query2);
				st.setString(1, addstaff.getFname());
				st.setString(2,addstaff.getLname());
				st.setString(3, addstaff.getGender());
				// form date object in it...
				st.setString(4, addstaff.getDob());
				System.out.println(addstaff.getAadharNo());
				st.setString(5,addstaff.getFatherName());
				st.setString(6,addstaff.getNationally());
				st.setString(7, addstaff.getAddress());
				st.setString(8,addstaff.getCity());
				st.setString(9,addstaff.getDistrict());
				st.setString(10,addstaff.getState());
				st.setInt(11,addstaff.getPincode());
				st.setString(12,addstaff.getPhoneNumber());
				st.setString(13,addstaff.getEmail());
				st.setString(14,addstaff.getEmergencyNo());
				st.setString(15,addstaff.getPostion());
				System.out.println("in staff dao line-4");
				st.setString(16, addstaff.getJoiningdate());
				st.setString(17,addstaff.getWorkschedule());
				st.setString(18, addstaff.getAccountnumber());
				st.setString(19,addstaff.getBankname());
				st.setString(20,addstaff.getTaxId());
				st.setString(21, addstaff.getAadharNo());
				st.setString(22, addstaff.getPanNO());
				System.out.println("in staff dao line-5");
				st.setInt(23, addstaff.getYear10());
				st.setString(24, addstaff.getSchoolname10());
				st.setInt(25, addstaff.getTenthpercent());
				st.setInt(26, addstaff.getYear12());
				st.setString(27,addstaff.getSchoolname12());
				st.setInt(28, addstaff.getTwelfthpercent());
				st.setString(29,addstaff.getDegreename());
				st.setInt(30,addstaff.getDegreeyear());
				st.setString(31,addstaff.getCollegename());
				st.setInt(32,addstaff.getDegreepercent());
				st.setString(33,addstaff.getPreviousEmp());
				st.setString(34,addstaff.getEmppostion());
				st.setInt(35,addstaff.getEmpduration());
				st.setString(36,addstaff.getLeavingreason());
				System.out.println("in staff dao line-6");
				st.setString(37,addstaff.getReference1());
				st.setString(38, addstaff.getRefrelation1());
				st.setString(39, addstaff.getRefphno1());
				st.setString(40, addstaff.getRefemail1());
				st.setString(41,addstaff.getReference2());
				st.setString(42,addstaff.getRefrelation2());
				st.setString(43, addstaff.getRefphno2());
				st.setString(44,addstaff.getRefemail2());
				st.setString(45, addstaff.getEmpid());
				
				
				int val= st.executeUpdate();
				System.out.println("in staff dao line-7");
				if(val == 1) {
					flag= true;
					con.commit();
					System.out.println("in staff dao line-8");
				}else {
					flag=false;
					
				}				
			}		
			System.out.println("in staff dao line-9");
		}
		catch (Exception e) {
			e.printStackTrace();
			try {
				flag=false;
				con.rollback();
				System.out.println("in staff dao try -2");
			} catch (SQLException e2) {
				e2.printStackTrace();
				
			}
		}finally {
			try {
				if (con != null)
					con.close();
				if(st != null)
					st.close();
				System.out.println("in staff dao try-3");
			}catch (Exception e3) {
				e3.printStackTrace();
			}
		}
		
		return flag;
		
	}
	
}

