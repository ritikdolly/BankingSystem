package Bank.Dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bank.Model.AddInformation;

public class BankingDao {
	
	//get SQl connection...
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		String url="jdbc:mysql://localhost:3306/banking_system";
		String user="root123";
		String pwd="root123";
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(url,user,pwd);	
	}
	
	public boolean loginUsers(AddInformation login) {
		Connection con = null;
		PreparedStatement st =null;
		boolean flag= false;
		
		try {
			con = BankingDao.getConnection();
			con.setAutoCommit(false);
			st =con.prepareStatement("SELECT * FROM login where UserId = ? and password =?");
			st.setString(1,login.getClientUserId());
			st.setString(2,login.getClientPassword());
			ResultSet result = st.executeQuery();
			if(result.next() ) {
				login.setServerUserId(result.getString("UserId"));
				login.setServerPassword(result.getString("password"));
		        login.setType(result.getString("type"));
		        login.setUserName(result.getString("UserName"));
		        System.out.println("in line 1 bank dao");
		        flag=true;
			}else {
				con.rollback();
				con.commit();
				flag=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("In Catch block");
			
		}finally {
			try {
				if(con != null)
					con.close();
				if(st !=null)
					st.close();
				System.out.println("In Finally Try block of bankingDao file");
			}catch(Exception e3) {
				e3.printStackTrace();
			}
		}
		System.out.println(login.getServerUserId()+" in bank dao file");    		
		System.out.println(login.getServerPassword()+" in bank dao file");
		return flag;
	}
	
	
}
