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
			while (rs.next()) {
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
					st.setString(3, model.getReceiverName());
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
						con.commit();
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
}
