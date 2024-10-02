package Bank.Model;

/*
Table: login
Columns:
UserId varchar(45) PK 
password varchar(45) PK 
type varchar(10)
*/

public class AddInformation {
	//login table
	private String clientUserId;
	private String serverUserId;
	private String clientPassword;
	private String serverPassword;
	private String type;
	private String userName;
	public String getClientUserId() {
		return clientUserId;
	}
	public void setClientUserId(String clientUserId) {
		this.clientUserId = clientUserId;
	}
	public String getServerUserId() {
		return serverUserId;
	}
	public void setServerUserId(String serverUserId) {
		this.serverUserId = serverUserId;
	}
	public String getClientPassword() {
		return clientPassword;
	}
	public void setClientPassword(String clientPassword) {
		this.clientPassword = clientPassword;
	}
	public String getServerPassword() {
		return serverPassword;
	}
	public void setServerPassword(String serverPassword) {
		this.serverPassword = serverPassword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "AddInformation [clientUserId=" + clientUserId + ", serverUserId=" + serverUserId + ", clientPassword="
				+ clientPassword + ", serverPassword=" + serverPassword + ", type=" + type + ", userName=" + userName
				+ "]";
	}
	
	
	
}
