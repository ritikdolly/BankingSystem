package Bank.Model.customer;

public class CustomerModel {

	private String senderCustId;
	private String senderFName;
	private String senderLName;
	private String senderAccNo;
	private int senderBalance;
	private String senderPwd;

	// Receiver
	private String receiverCustId;
	private String receiverFName;
	private String recieverLName;
	private String receiverAccNo;
	private String receiverIFSC;
	private int receiverBalance;

	public CustomerModel() {
		super();
	}

	public CustomerModel(String senderCustId, String senderFName, String senderLName, String senderAccNo,
			int senderBalance, String senderPwd, String receiverCustId, String receiverFName, String recieverLName,
			String receiverAccNo, String receiverIFSC, int receiverBalance) {
		super();
		this.senderCustId = senderCustId;
		this.senderFName = senderFName;
		this.senderLName = senderLName;
		this.senderAccNo = senderAccNo;
		this.senderBalance = senderBalance;
		this.senderPwd = senderPwd;
		this.receiverCustId = receiverCustId;
		this.receiverFName = receiverFName;
		this.recieverLName = recieverLName;
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

	public String getSenderFName() {
		return senderFName;
	}

	public void setSenderFName(String senderFName) {
		this.senderFName = senderFName;
	}

	public String getSenderLName() {
		return senderLName;
	}

	public void setSenderLName(String senderLName) {
		this.senderLName = senderLName;
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

	public String getReceiverFName() {
		return receiverFName;
	}

	public void setReceiverFName(String receiverFName) {
		this.receiverFName = receiverFName;
	}

	public String getRecieverLName() {
		return recieverLName;
	}

	public void setRecieverLName(String recieverLName) {
		this.recieverLName = recieverLName;
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
