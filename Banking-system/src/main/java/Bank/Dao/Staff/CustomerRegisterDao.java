package Bank.Dao.Staff;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Bank.Dao.Manager.StaffRegisterDao;
import Bank.Model.AddCustomer;

public class CustomerRegisterDao {

	private static final String INSERT_USERS_SQL = "INSERT INTO customer (firstname, lastname, gender, Dob, fathername, nationality, address, city, district, state, pincode, phonenumber, aadhaarno, panno, email, accountNo, accounttype, nominee1, relationship1, phonenum1, email1, nominee2, relationship2, phonenum2, email2, CustId) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
	private static final String USER_PASSWORD = "INSERT INTO login (UserId, password, UserName, type) VALUES (?, ?, ?, 'customer');";
	private static final String DELETE_USERS_SQL = "DELETE FROM customer WHERE CustId = ?;";
	private static final String SELECT_USER_BY_ID = "SELECT * FROM customer WHERE CustId = ?;";

	// Method to get a connection to the database
	protected static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/banking_system", "root123", "root123");
	}

	// Method to add a new user
	public boolean addModel(AddCustomer newUser) {
		boolean flag = false;
		String userName = newUser.getFirstname() + " " + newUser.getLastname();
		try (Connection con = getConnection()) {
			con.setAutoCommit(false);
			try (PreparedStatement st = con.prepareStatement(USER_PASSWORD)) {
				// Inserting into the login table
				st.setString(1, newUser.getUsername());
				st.setString(2, newUser.getPassword());
				st.setString(3, userName);
				if (st.executeUpdate() == 1) {
					try (PreparedStatement st2 = con.prepareStatement(INSERT_USERS_SQL)) {
						st2.setString(1, newUser.getFirstname());
						st2.setString(2, newUser.getLastname());
						st2.setString(3, newUser.getGender());
						st2.setString(4, newUser.getDob());
						st2.setString(5, newUser.getFathername());
						st2.setString(6, newUser.getNationality());
						st2.setString(7, newUser.getAddress());
						st2.setString(8, newUser.getCity());
						st2.setString(9, newUser.getDistrict());
						st2.setString(10, newUser.getState());
						st2.setInt(11, newUser.getPincode());
						st2.setString(12, newUser.getPhonenumber());
						st2.setString(13, newUser.getAadhaarno());
						st2.setString(14, newUser.getPanno());
						st2.setString(15, newUser.getEmail());
						st2.setString(16, newUser.getAccountNo());
						st2.setString(17, newUser.getAccounttype());
						st2.setString(18, newUser.getNominee1());
						st2.setString(19, newUser.getRelationship1());
						st2.setString(20, newUser.getPhonenum1());
						st2.setString(21, newUser.getEmail1());
						st2.setString(22, newUser.getNominee2());
						st2.setString(23, newUser.getRelationship2());
						st2.setString(24, newUser.getPhonenum2());
						st2.setString(25, newUser.getEmail2());
						st2.setString(26, newUser.getUsername());

						if (st2.executeUpdate() == 1) {
							con.commit();
							flag = true;
						} else {
							con.rollback();
						}
					}
				}
			} catch (SQLException e) {
				con.rollback();
				e.printStackTrace();
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public AddCustomer moreAboutCustomer(String custId) {
		Connection con = null;
		PreparedStatement st = null;
		AddCustomer customer = new AddCustomer();

		try {
			con = CustomerRegisterDao.getConnection();
			st = con.prepareStatement(SELECT_USER_BY_ID);
			st.setString(1, custId);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				customer.setFirstname(rs.getString("firstname"));
				customer.setLastname(rs.getString("lastname"));
				customer.setGender(rs.getString("gender"));
				customer.setDob(rs.getString("dob"));
				customer.setFathername(rs.getString("fatherName"));
				customer.setNationality(rs.getString("nationality"));
				customer.setAddress(rs.getString("address"));
				customer.setEmail(rs.getString("email"));
				customer.setCity(rs.getString("city"));
				customer.setPhonenumber(rs.getString("phonenumber"));
				customer.setState(rs.getString("state"));
				customer.setAccounttype(rs.getString("accounttype"));
				customer.setDistrict(rs.getString("district"));
				customer.setPincode(Integer.parseInt(rs.getString("pincode")));
				customer.setAadhaarno(rs.getString("aadhaarNo"));
				customer.setPanno(rs.getString("panNo"));
				customer.setNominee1(rs.getString("nominee1"));
				customer.setRelationship1(rs.getString("relationship1"));
				customer.setPhonenum1(rs.getString("phonenum1"));
				customer.setEmail1(rs.getString("email1"));
				customer.setNominee2(rs.getString("nominee2"));
				customer.setRelationship2(rs.getString("relationship2"));
				customer.setPhonenum2(rs.getString("phonenum2"));
				customer.setEmail2(rs.getString("email2"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (con != null)
					con.close();
				if (st != null)
					st.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return customer;
	}

	public AddCustomer editAddCustomer(String custId) {
		AddCustomer customer = new AddCustomer();
		Connection con = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		String query = "SELECT firstname, lastname, dob, fathername, email, phonenumber, address, city, district, state, pincode,nominee1, relationship1, phonenum1, email1, nominee2, relationship2, phonenum2, email2 FROM customer WHERE (CustId = ?);";
		try {
			con = StaffRegisterDao.getConnection();
			st = con.prepareStatement(query);
			st.setString(1, custId);
			rs = st.executeQuery();
			while (rs.next()) {
				customer.setFirstname(rs.getString("firstname"));
				customer.setLastname(rs.getString("lastname"));
				customer.setDob(rs.getString("dob"));
				customer.setFathername(rs.getString("fatherName"));
				customer.setEmail(rs.getString("email"));
				customer.setCity(rs.getString("city"));
				customer.setPhonenumber(rs.getString("phoneNumber"));
				customer.setAddress(rs.getString("address"));
				customer.setPincode(Integer.parseInt(rs.getString("pincode")));
				customer.setCity(rs.getString("city"));
				customer.setState(rs.getString("state"));
				customer.setDistrict(rs.getString("district"));
				customer.setNominee1(rs.getString("nominee1"));
				customer.setRelationship1(rs.getString("relationship1"));
				customer.setPhonenum1(rs.getString("phonenum1"));
				customer.setEmail1(rs.getString("email1"));
				customer.setNominee2(rs.getString("nominee2"));
				customer.setRelationship2(rs.getString("relationship2"));
				customer.setPhonenum2(rs.getString("phonenum2"));
				customer.setEmail2(rs.getString("email2"));

				customer.setCustId(custId);
			}

		} catch (Exception e) {
			System.out.println("SQL Error: " + e.getMessage());
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (st != null)
					st.close();
				if (con != null)
					con.close();
			} catch (SQLException e3) {
				e3.printStackTrace();
			}
		}
		return customer;
	}

	// Method to update an existing user's details
	public boolean updateUser(AddCustomer user) throws SQLException, ClassNotFoundException {
	    String UPDATE_USERS_SQL = "UPDATE customer SET firstname = ?, lastname = ?, dob = ?, fathername = ?, email = ?, phonenumber = ?, address = ?, city = ?, district = ?, state = ?, pincode = ?, nominee1 = ?, relationship1 = ?, phonenum1 = ?, email1 = ?, nominee2 = ?, relationship2 = ?, phonenum2 = ?, email2 = ? WHERE CustId = ?;";
	    boolean flag = false;
	    try (Connection con = getConnection(); PreparedStatement statement = con.prepareStatement(UPDATE_USERS_SQL)) {
	        statement.setString(1, user.getFirstname());
	        statement.setString(2, user.getLastname());
	        statement.setString(3, user.getDob());
	        statement.setString(4, user.getFathername());
	        statement.setString(5, user.getEmail());
	        statement.setString(6, user.getPhonenumber());
	        statement.setString(7, user.getAddress());
	        statement.setString(8, user.getCity());
	        statement.setString(9, user.getDistrict());
	        statement.setString(10, user.getState());
	        statement.setInt(11, user.getPincode());
	        statement.setString(12, user.getNominee1());
	        statement.setString(13, user.getRelationship1());
	        statement.setString(14, user.getPhonenum1());
	        statement.setString(15, user.getEmail1());
	        statement.setString(16, user.getNominee2());
	        statement.setString(17, user.getRelationship2());
	        statement.setString(18, user.getPhonenum2());
	        statement.setString(19, user.getEmail2());
	        statement.setString(20, user.getCustId());
	        
	        System.out.println("existising:" +user.getCustId());
	        int rowsUpdated = statement.executeUpdate();
	        if (rowsUpdated == 1) {
	            flag = true;
	        } else {
	            flag = false;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return flag;
	}

	// Method to delete a user by customer ID
	public boolean deleteUser(String custId) throws SQLException, ClassNotFoundException {
		try (Connection con = getConnection(); PreparedStatement st = con.prepareStatement(DELETE_USERS_SQL)) {
			st.setString(1, custId);
			return st.executeUpdate() > 0;
		}
	}

	public List<AddCustomer> listUser() throws ClassNotFoundException {
		List<AddCustomer> user = new ArrayList<>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			con = StaffRegisterDao.getConnection();
			if (con == null) {
				System.out.println("Connection failed!");
				return user;
			}
			String query = "SELECT CustId, firstname, lastname, email, accounttype FROM customer";
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				String custId = rs.getString("CustId");
				String fname = rs.getString("firstname");
				String lname = rs.getString("lastname");
				String email = rs.getString("email");
				String accounttype = rs.getString("accounttype");
				user.add(new AddCustomer(custId, fname, lname, email, accounttype));
			}
		} catch (Exception e) {
			System.out.println("SQL Error: " + e.getMessage());
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (st != null)
					st.close();
				if (con != null)
					con.close();
			} catch (SQLException e3) {
				e3.printStackTrace();
			}
		}
		return user;
	}
	
	public boolean depositMoney(String custId, double amount) throws SQLException, ClassNotFoundException {
	    String updateBalanceSQL = "UPDATE customer SET balance = balance + ? WHERE CustId = ?;";
	    try (Connection connection = getConnection();
	         PreparedStatement preparedStatement = connection.prepareStatement(updateBalanceSQL)) {
	        preparedStatement.setDouble(1, amount);
	        preparedStatement.setString(2, custId);
	        int updatedRows = preparedStatement.executeUpdate();
	        return updatedRows > 0;
	    }
	}

}
