package Bank.Dao.Manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import Bank.Model.UserInfoModels;
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
				st.setString(15,addstaff.getPosition());
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
	
		// Delete staff from Table......
		
		public boolean deleteStaff(String empId) {
			Connection con = null;
			PreparedStatement st = null;
			String query="DELETE FROM staff WHERE (EmpId = ?) ;";
			String query2="DELETE FROM login WHERE (EmpId = ?)";
			boolean flag= false;
			try {
				con= StaffRegisterDao.getConnection();
				con.setAutoCommit(false);
				st=con.prepareStatement(query);
				st.setString(1, empId);
				int val = st.executeUpdate();
				if(val == 1) {
					st=con.prepareStatement(query2);
					st.setString(1, empId);
					int succ = st.executeUpdate();
					if(succ ==1) {
						flag=true;
						con.commit();
					}
				}else {
					flag =false;
					con.rollback();
				}							
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(con != null)
						con.close();
					if(st != null)
						st.close();
				}catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			return flag;
		}
		
		//get record form database to jsp page show that edit can be done
		public AddStaff editStaffRetrieve(String empId) {
			AddStaff staff = new AddStaff();
			Connection con=null;
			PreparedStatement st =null;
			ResultSet rs =null;
			String query="SELECT fname, lname , dob , fatherName , address , city, phoneNo , email , emergencyNO , position , workSchedule, reference1, refrelation1,refphNo1 , refemail1, reference2 , refrelation2 , refphNo2, refemail2 from staff WHERE (EmpId = ?);";
			try {
				con= StaffRegisterDao.getConnection();
				st=con.prepareStatement(query);
				st.setString(1, empId);
				rs = st.executeQuery();
				while(rs.next()) {
					staff.setFname(rs.getString("fname"));
					staff.setLname(rs.getString("lname"));
					staff.setDob(rs.getString("dob"));
					staff.setFatherName(rs.getString("fatherName"));
					staff.setAddress(rs.getString("address"));
					staff.setCity(rs.getString("city"));
					staff.setPhoneNumber(rs.getString("phoneNo"));
					staff.setEmail(rs.getString("email"));
					staff.setEmergencyNo(rs.getString("emergencyNO"));
					staff.setPosition(rs.getString("position"));
					staff.setWorkschedule(rs.getString("workSchedule"));
					staff.setReference1(rs.getString("reference1"));
					staff.setRefrelation1(rs.getString("refrelation1"));
					staff.setRefphno1(rs.getString("refphNo1"));
					staff.setRefemail1(rs.getString("refemail1"));
					staff.setReference2(rs.getString("reference2"));
					staff.setRefrelation2(rs.getString("refrelation2"));
					staff.setRefphno2(rs.getString("refphNo2"));
					staff.setRefemail2(rs.getString("refemail2"));	
					staff.setEmpid(empId);
					System.out.println("in in StaffregistorDao editStaff() try --1");
				}
				
			} catch (Exception e) {
		        System.out.println("SQL Error: " + e.getMessage());
		        e.printStackTrace();
		        System.out.println("in StaffregistorDao editStaff() catch 1 ");
		    } finally {
		        try {
		            if (rs != null) rs.close();
		            if (st != null) st.close();
		            if (con != null) con.close();
		            System.out.println("in StaffregistorDao editStaff() try --2 ");
		        } catch (SQLException e3) {
		            e3.printStackTrace();
		        }
		    }
			return staff;
		}
		
		// update  staff Account....
		public boolean updateStaff(AddStaff staff) throws ClassNotFoundException {
			 String UPDATE_STAFF_SQL = "UPDATE staff SET fname = ?, lname = ?, dob = ?, fatherName = ?, address = ?, city = ?, phoneNo = ?,emergencyNO = ?, email = ?,  position = ?, workSchedule = ?, reference1 = ?, refrelation1 = ?, refphNo1 = ?, refemail1 = ?, reference2 = ?, refrelation2 = ?, refphNo2 = ?, refemail2 = ? WHERE EmpId = ?";
			 Connection con=null;
			 boolean flag = false;
	        try {
	        	con= StaffRegisterDao.getConnection();
	            PreparedStatement preparedStatement = con.prepareStatement(UPDATE_STAFF_SQL);
	            System.out.println("in StaffregDao Update() line -1");
	            preparedStatement.setString(1, staff.getFname());
	            preparedStatement.setString(2, staff.getLname());
	            preparedStatement.setString(3, staff.getDob());
	            preparedStatement.setString(4, staff.getFatherName());
	            preparedStatement.setString(5, staff.getAddress());
	            preparedStatement.setString(6, staff.getCity());
	            preparedStatement.setString(7, staff.getPhoneNumber());
	            preparedStatement.setString(8, staff.getEmergencyNo());
	            preparedStatement.setString(9, staff.getEmail());
	            preparedStatement.setString(10, staff.getPosition());
	            preparedStatement.setString(11, staff.getWorkschedule());
	            preparedStatement.setString(12, staff.getRefemail1());
	            preparedStatement.setString(13, staff.getRefrelation1());
	            preparedStatement.setString(14, staff.getRefphno1());
	            preparedStatement.setString(15, staff.getRefemail1());
	            preparedStatement.setString(16, staff.getReference2());
	            preparedStatement.setString(17, staff.getRefrelation2());
	            preparedStatement.setString(18, staff.getRefphno2());
	            preparedStatement.setString(19, staff.getRefemail1());
	            preparedStatement.setString(20, staff.getEmpid());
	            System.out.println("in StaffregDao Update() line -2");
	            int val = preparedStatement.executeUpdate();
	            System.out.println("in StaffregDAO Update() line -3");
	            System.out.println("------------------------------------");
	            System.out.println(staff.getFname());
	    		System.out.println(staff.getLname());
	    		System.out.println(staff.getDob());
	    		System.out.println(staff.getFatherName());
	    		System.out.println(staff.getAddress());
	    		System.out.println(staff.getCity());
	    		System.out.println(staff.getPhoneNumber());
	    		System.out.println(staff.getEmail());
	    		System.out.println(staff.getEmergencyNo());
	    		System.out.println(staff.getPosition());
	    		System.out.println(staff.getWorkschedule());
	    		System.out.println(staff.getReference1());
	    		System.out.println(staff.getRefrelation1());
	    		System.out.println(staff.getRefphno1());
	    		System.out.println(staff.getRefemail1());
	    		System.out.println(staff.getReference2());
	    		System.out.println(staff.getRefrelation2());
	    		System.out.println(staff.getRefphno2());
	    		System.out.println(staff.getRefemail2());
	    		System.out.println(staff.getEmpid());
	    		System.out.println("-------------------------------------------");
	            if(val == 1) {
	            	flag = true;
	            	System.out.println("in StaffregDAo Update() If condn..1");
	            }else {
	            	flag= false;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            System.out.println("in StaffregDAo Update() Catch -1");
	        }
	        return flag;
	    }
		
		//to see more detail about one staff
		public AddStaff moreAboutStaff(String empId) {
			Connection con = null;
			PreparedStatement st = null;
			String query="SELECT * FROM staff WHERE (EmpId = ?)";
			boolean flag= false;
			AddStaff staff= new AddStaff();
			
			try {
				con= StaffRegisterDao.getConnection();
				con.setAutoCommit(false);
				st=con.prepareStatement(query);
				st.setString(1, empId);
				ResultSet rs = st.executeQuery();
				while(rs.next()) {
					staff.setFname(rs.getString("fname"));
					staff.setLname(rs.getString("lname"));
					staff.setGender(rs.getString("gender"));
					staff.setDob(rs.getString("dob"));
					staff.setFatherName(rs.getString("fatherName"));
					staff.setNationally(rs.getString("nationality"));
					staff.setAddress(rs.getString("address"));
					staff.setCity(rs.getString("city"));
					staff.setDistrict(rs.getString("district"));
					staff.setState(rs.getString("state"));
					staff.setPincode(rs.getInt("pincode"));
					staff.setPhoneNumber(rs.getString("phoneNo"));
					staff.setEmail(rs.getString("email"));
					staff.setEmergencyNo(rs.getString("emergencyNO"));
					staff.setPosition(rs.getString("position"));
					staff.setJoiningdate(rs.getString("joiningdate"));
					staff.setWorkschedule(rs.getString("workSchedule"));
					staff.setAccountnumber(rs.getString("accountNo"));
					staff.setBankname(rs.getString("bankName"));
					staff.setTaxId(rs.getString("taxId"));
					staff.setAadharNo(rs.getString("aadharNo"));
					staff.setPanNO(rs.getString("panNO"));
					staff.setYear10(rs.getInt("tenthPassYear"));;
					staff.setSchoolname10(rs.getString("schoolName10"));
					staff.setTenthpercent(rs.getInt("tenthPercent"));
					staff.setYear12(rs.getInt("twelfthPassYear"));
					staff.setSchoolname12(rs.getString("schoolName12"));
					staff.setTwelfthpercent(rs.getInt("twelfthpercent"));
					staff.setDegreename(rs.getString("degreeName"));
					staff.setDegreeyear(rs.getInt("degreepassYear"));
					staff.setCollegename(rs.getString("collegeName"));
					staff.setDegreepercent(rs.getInt("degreepercent"));
					staff.setPreviousEmp(rs.getString("previousEmp"));
					staff.setEmppostion(rs.getString("empposition"));
					staff.setEmpduration(rs.getInt("empduration"));
					staff.setLeavingreason(rs.getString("leavingreason"));
					staff.setReference1(rs.getString("reference1"));
					staff.setRefrelation1(rs.getString("refrelation1"));				
					staff.setRefphno1(rs.getString("refphNo1"));
					staff.setRefemail1(rs.getString("refemail1"));
					staff.setReference2(rs.getString("reference2"));
					staff.setRefrelation2(rs.getString("refrelation2"));
					staff.setRefphno2(rs.getString("refphNo2"));
					staff.setRefemail2(rs.getString("refemail2"));
					flag= true;
				}
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(con != null)
						con.close();
					if(st != null)
						st.close();
				}catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			return staff;
		}
		
		//to see fname ,lname, EmoId and Position 
		public List<AddStaff> selectAllEmp() throws ClassNotFoundException{
		    List<AddStaff> emps = new ArrayList<>();
		    Connection con = null;
		    Statement st = null;
		    ResultSet rs = null;
		    try {
		        con = StaffRegisterDao.getConnection();
		        if (con == null) {
		            System.out.println("Connection failed!");
		            return emps;
		        }
		        System.out.println("in StaffregistorDao selectAllEmp() -1 ");
		        String query = "SELECT EmpId, fname, lname, position FROM banking_system.staff";
		        st = con.createStatement();
		        rs = st.executeQuery(query);
		        System.out.println("in taffregistorDao selectAllEmp() -2 ");
		        while (rs.next()) {
		            String empId = rs.getString("EmpId");
		            String fname = rs.getString("fname");
		            String lname = rs.getString("lname");
		            String position = rs.getString("position");
		            emps.add(new AddStaff(empId, fname, lname, position));
		        }
		        System.out.println("in StaffregistorDao selectAllEmp() -3 ");
		    } catch (Exception e) {
		        System.out.println("SQL Error: " + e.getMessage());
		        e.printStackTrace();
		        System.out.println("in StaffregistorDao selectAllEmp() catch 1 ");
		    } finally {
		        try {
		            if (rs != null) rs.close();
		            if (st != null) st.close();
		            if (con != null) con.close();
		            System.out.println("in StaffregistorDao selectAllEmp() try --2 ");
		        } catch (SQLException e3) {
		            e3.printStackTrace();
		        }
		    }
		    return emps;
		}
		
		public UserInfoModels getMainUserDetail( String mainUser) {
			Connection con=null;
			PreparedStatement st= null;
			ResultSet rs= null;
			String query1="select type from login where UserId= ? ; ";
			String query2=null;
			UserInfoModels info=  new UserInfoModels();
			String userType =null;
			String tableName=null;
			
			try {
				con= StaffRegisterDao.getConnection();
				con.setAutoCommit(false);
				System.out.println("in staff reg dao mainUser Detail line -1");
				st=con.prepareStatement(query1);
				st.setString(1, mainUser);
				rs= st.executeQuery();
				while (rs.next()){
					userType = rs.getString("type");	
				}
				System.out.println("in staff reg dao mainUser Detail line -2");
				switch (userType) {
				case "admin":
					query2="SELECT * FROM admins where userId= ? ;";
					tableName="admins";
					//
					System.out.println("in staff reg Dao TableName= "+tableName);
					
					System.out.println("in staff reg dao mainUser Detail line -3");
					st=con.prepareStatement(query2);
					st.setString(1, mainUser);
					rs= st.executeQuery();
					System.out.println("in staff reg dao mainUser Detail line -4");
					while(rs.next()) {
						String EmpId= rs.getString("UserId");
						String fname= rs.getString("fname");
						String lname= rs.getString("lname");
						String dob= rs.getString("dob");
						String fatherName= rs.getString("fatherName");
						String address= rs.getString("address");
						String city= rs.getString("city");
						String district= rs.getString("district");
						String state= rs.getString("state");
						String pincode= rs.getString("pincode");
						String phoneNo= rs.getString("phoneNo");
						String email= rs.getString("email");
						String emergencyNO= rs.getString("emergencyNO");
						String aadharNo= rs.getString("aadharNo");
						String panNO= rs.getString("panNO");
						String accountNo=rs.getString("accountNo");
						info=new UserInfoModels(EmpId,fname,lname,dob,fatherName,address,city,district,state,pincode,phoneNo,email,emergencyNO,aadharNo,panNO,accountNo);
						System.out.println("in staff reg dao mainUser Detail line -5");	
					}
					//
					break;
				case "staff":
					query2="SELECT * FROM staff where EmpId= ? ;";
					tableName="staff";
					//
					System.out.println("in staff reg Dao TableName= "+tableName);
					
					System.out.println("in staff reg dao mainUser Detail line -3");
					st=con.prepareStatement(query2);
					st.setString(1, mainUser);
					rs= st.executeQuery();
					System.out.println("in staff reg dao mainUser Detail line -4");
					while(rs.next()) {
						String EmpId= rs.getString("EmpId");
						String fname= rs.getString("fname");
						String lname= rs.getString("lname");
						String dob= rs.getString("dob");
						String fatherName= rs.getString("fatherName");
						String address= rs.getString("address");
						String city= rs.getString("city");
						String district= rs.getString("district");
						String state= rs.getString("state");
						String pincode= rs.getString("pincode");
						String phoneNo= rs.getString("phoneNo");
						String email= rs.getString("email");
						String emergencyNO= rs.getString("emergencyNO");
						String aadharNo= rs.getString("aadharNo");
						String panNO= rs.getString("panNO");
						String accountNo=rs.getString("accountNo");
						info=new UserInfoModels(EmpId,fname,lname,dob,fatherName,address,city,district,state,pincode,phoneNo,email,emergencyNO,aadharNo,panNO,accountNo);
						System.out.println("in staff reg dao mainUser Detail line -5");	
					}
					//
					break;
				case "customer":
					query2="SELECT * FROM customer where CustId= ? ;";
					tableName="customer";
					//
					System.out.println("in staff reg Dao TableName= "+tableName);
					
					System.out.println("in staff reg dao mainUser Detail line -3");
					st=con.prepareStatement(query2);
					st.setString(1, mainUser);
					rs= st.executeQuery();
					System.out.println("in staff reg dao mainUser Detail line -4");
					while(rs.next()) {						
						String EmpId= rs.getString("CustId");
						String fname= rs.getString("firstname");
						String lname= rs.getString("lastname");
						String dob= rs.getString("Dob");
						String fatherName= rs.getString("fathername");
						String address= rs.getString("address");
						String city= rs.getString("city");
						String district= rs.getString("district");
						String state= rs.getString("state");
						String pincode= rs.getString("pincode");
						String phoneNo= rs.getString("phonenumber");
						String email= rs.getString("email");
						String emergencyNO= rs.getString("phonenum1");
						String aadharNo= rs.getString("aadhaarno");
						String panNO= rs.getString("panno");
						String accountNo=rs.getString("accountNo");
						info=new UserInfoModels(EmpId,fname,lname,dob,fatherName,address,city,district,state,pincode,phoneNo,email,emergencyNO,aadharNo,panNO,accountNo);
						System.out.println("in staff reg dao mainUser Detail line -5");	
					}
					//
					break;
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				try {
					if(con != null)
						con.close();
					if(st != null)
						st.close();
					if(rs != null) {
						rs.close();
					}
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			return info;
		}
		

	}

