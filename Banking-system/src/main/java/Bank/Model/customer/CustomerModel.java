package Bank.Model.customer;

public class CustomerModel {
	
	private String senderCustId;
	private String senderName;
	private String senderAccNo;
	private int senderBalance;
	private String senderPwd;
	
	//Receiver
	private String receiverCustId;
	private String receiverName;
	private String receiverAccNo;
	private String receiverIFSC;
	private int receiverBalance;
	
	
	
	
	
	
	public CustomerModel() {
		super();
	}
	
	
	public CustomerModel(String senderCustId, String senderName, String senderAccNo, int senderBalance,
			String senderPwd, String receiverCustId, String receiverName, String receiverAccNo, String receiverIFSC,
			int receiverBalance) {
		super();
		this.senderCustId = senderCustId;
		this.senderName = senderName;
		this.senderAccNo = senderAccNo;
		this.senderBalance = senderBalance;
		this.senderPwd = senderPwd;
		this.receiverCustId = receiverCustId;
		this.receiverName = receiverName;
		this.receiverAccNo = receiverAccNo;
		this.receiverIFSC = receiverIFSC;
		this.receiverBalance = receiverBalance;
	}


	public String getSenderCustId() {
		return senderCustId;
	}
	public void setSenderCustId(String senderCustId) {
		this.senderCustId = senderCustId;
	}
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	public String getSenderAccNo() {
		return senderAccNo;
	}
	public void setSenderAccNo(String senderAccNo) {
		this.senderAccNo = senderAccNo;
	}
	public int getSenderBalance() {
		return senderBalance;
	}
	public void setSenderBalance(int senderBalance) {
		this.senderBalance = senderBalance;
	}
	public String getSenderPwd() {
		return senderPwd;
	}
	public void setSenderPwd(String senderPwd) {
		this.senderPwd = senderPwd;
	}
	public String getReceiverCustId() {
		return receiverCustId;
	}
	public void setReceiverCustId(String receiverCustId) {
		this.receiverCustId = receiverCustId;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getReceiverAccNo() {
		return receiverAccNo;
	}
	public void setReceiverAccNo(String receiverAccNo) {
		this.receiverAccNo = receiverAccNo;
	}
	public String getReceiverIFSC() {
		return receiverIFSC;
	}
	public void setReceiverIFSC(String receiverIFSC) {
		this.receiverIFSC = receiverIFSC;
	}
	public int getReceiverBalance() {
		return receiverBalance;
	}
	public void setReceiverBalance(int receiverBalance) {
		this.receiverBalance = receiverBalance;
	}

	
}
