package Bank.Dao.Customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bank.Model.customer.CustomerModel;

public class customerDao {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		String url = "jdbc:mysql://localhost:3306/banking_system";
		String user = "root123";
		String pwd = "root123";
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(url, user, pwd);
	}

	public String getTransaction(CustomerModel model) {
		Connection con = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		String senderGetBalanceQuery = "Select balance from customer where CustId= ?";// to get balance from customer 1
		String senderQuery = "UPDATE customer SET balance = balance - ?  WHERE CustId = ?;";// query for decrease
		System.out.println("in Customr dao tranfer line -1");
		String reveiverQuery = "UPDATE customer SET balance = balance + ?  WHERE accountNo = ? and firstname= ? ;";// to for receiver 
		String senderMoneyBack= "UPDATE customer SET balance = balance + ?  WHERE CustId= ? ;";
		
//		System.out.println(model.getSenderCustId());
//		System.out.println(model.getReceiverAccNo());
//		System.out.println(model.getReceiverName());
//		System.out.println();model.getSenderBalance();
//		System.out.println(model.getReceiverBalance());
		
		
		String msg = null;
		int amount = 0;
		try {
			con = customerDao.getConnection();
			con.setAutoCommit(false);
			st = con.prepareStatement(senderGetBalanceQuery);// too get sender balance
			System.out.println("in Customr dao tranfer line -2");
			st.setString(1, model.getSenderCustId());
			rs = st.executeQuery();
			if (rs.next()) {
				amount = rs.getInt("balance");// getting amount from client 1
			}
			System.out.println(amount);
			if ((amount - model.getSenderBalance()) > 500) {

				st = con.prepareStatement(senderQuery);
				st.setInt(1, model.getSenderBalance());
				st.setString(2, model.getSenderCustId());
				int value = st.executeUpdate();
				System.out.println("in Customr dao tranfer line -3");
				if (value == 1) {
					st = con.prepareStatement(reveiverQuery);
					st.setInt(1, model.getSenderBalance());
					st.setString(2, model.getReceiverAccNo());
					st.setString(3, model.getReceiverFName());
					int val = st.executeUpdate();
					if (val == 1) {
						msg = "Congratulation! Transaction is successfully done";
						System.out.println(msg);
						con.commit();
					} else {
						st = con.prepareStatement(senderMoneyBack);
						st.setInt(1, model.getSenderBalance());
						st.setString(2, model.getSenderCustId());
						int n = st.executeUpdate();
						msg = "Oops! there is some issues in serve";
						System.out.println(msg + " !... receiver fold");
					}
				} else {
					msg = "Oops! there is some issues in serve";
					System.out.println(msg + " Sender fold");
					con.commit();
				}
			} else {
				msg = "Oops! you do not have sufficient amount to make transaction";
				System.out.println(msg);
				con.commit();
			}

		} catch (Exception e) {
			e.printStackTrace();
			msg = "Oops ! there is some exception arise";
			System.out.println("in Customr dao tranfer catch block " + msg);
		} finally {

			try {
				if (con != null)
					con.close();
				if (st != null)
					st.close();
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return msg;
	}
	
	
	public String withdrawMoney(String userID , String pwd, int amount) {
		Connection con= null;
		PreparedStatement st =null;
		ResultSet rs= null;
		String getDataQuery="select * from login where UserId=? AND password= ?;";	// check whether information is right or wrong
		String getCustomerBalanceQuery="Select balance from customer where CustId= ?;";
		String getWithdrawQuery="UPDATE customer SET balance = balance - ?  WHERE CustId= ? ; "; // Withdraw money from customer table
		String msg=null;
		try {
			con=customerDao.getConnection();
			con.setAutoCommit(false);
			st= con.prepareStatement(getDataQuery);
			st.setString(1, userID);
			st.setString(2, pwd);
			rs=st.executeQuery();
			
			if (rs.next()) {// 
				st=con.prepareStatement(getCustomerBalanceQuery);
				st.setString(1, userID);
				rs= st.executeQuery();
				if (rs.next()) {
					int getBal= rs.getInt("balance");
					if( (getBal- amount) > 500) {
						st=con.prepareStatement(getWithdrawQuery);
						st.setInt(1, amount);
						st.setString(2, userID);
						int val=st.executeUpdate();
						if(val == 1) {
							msg = "Congratulation! Transaction is successfully done";
							con.commit();
						}else {
							msg="Server Issues";
							con.rollback();
							con.commit();
						}
					}else {
						msg="Not A Sufficient Amount to Make Withdraw.";
						con.rollback();
						con.commit();
					}
				}
			}else {
				msg="Oops!Password is Wrong.";
				con.rollback();
				con.commit();
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(con != null)
					con.close();
				if(st != null)
					st.close();
				if(rs != null)
					rs.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return msg;
	}
	
	public CustomerModel checkBalance(CustomerModel model) {
		Connection con =null;
		PreparedStatement st= null;
		ResultSet rs= null;
		String amountCheckQuery="Select firstname,lastname,accountNo,balance from customer where CustId= ?;";
		String msg=null;
		try {
			con = customerDao.getConnection();
			con.setAutoCommit(false);
			st=con.prepareStatement(amountCheckQuery);
			st.setString(1, model.getSenderCustId());
			rs=st.executeQuery();
			if(rs.next()) {
				model.setSenderFName(rs.getString("firstname"));
				model.setSenderLName(rs.getString("lastname"));
				model.setSenderAccNo(rs.getString("accountNo"));
				model.setSenderBalance(rs.getInt("balance"));
			}else {
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(con != null)
					con.close();
				if(st != null)
					st.close();
				if(rs !=null)
					rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return model;
	}
	
}
