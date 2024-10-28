package Bank.Model;

public class AddCustomer 
{
    private String firstname;
    private String lastname;
    private String gender;
    private String dob;
    private String fathername;
    private String nationality;
    private String address;
    private String city;
    private String district;
    private String state;
    private int pincode;
    private String phonenumber;
    private String aadhaarno;
    private String panno;
    private String email;
    private String accounttype;
    private String nominee1;
    private String relationship1;
    private String phonenum1;
    private String email1;
    private String nominee2;
    private String relationship2;
    private String phonenum2;
    private String email2;
    private String username; 
    private String password;
    private String accountNo;
    
    private String custId;
    private String balance;

    public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}

	// Default constructor
    public AddCustomer() {
        super();
    }

    // Constructor with partial fields (for customer creation)
    public AddCustomer(String custId, String firstname, String lastname, String email, String accounttype) {
        this.username = custId;  // changed to lowercase
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.accounttype = accounttype;
    }

    // Constructor for login
    public AddCustomer(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // Full constructor for customer data
    public AddCustomer(String custId, String firstname, String lastname, String dob, String fathername, String email, String phonenumber,
                 String address, int pincode, String city, String state, String district, String nominee1, String relationship1, String phonenum1,
                 String email1, String nominee2, String relationship2, String phonenum2, String email2) {
    	this.custId = custId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.dob = dob;
        this.fathername = fathername;
        this.address = address;
        this.pincode = pincode;
        this.city = city;
        this.state = state;
        this.district = district;
        this.phonenumber = phonenumber;
        this.email = email;
        this.nominee1 = nominee1;
        this.relationship1 = relationship1;
        this.phonenum1 = phonenum1;
        this.email1 = email1;
        this.nominee2 = nominee2;
        this.relationship2 = relationship2;
        this.phonenum2 = phonenum2;
        this.email2 = email2;
    }

    // Getters and setters
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getFathername() {
        return fathername;
    }

    public void setFathername(String fathername) {
        this.fathername = fathername;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getPincode() {
        return pincode;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getAadhaarno() {
        return aadhaarno;
    }

    public void setAadhaarno(String aadhaarno) {
        this.aadhaarno = aadhaarno;
    }

    public String getPanno() {
        return panno;
    }

    public void setPanno(String panno) {
        this.panno = panno;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAccounttype() {
        return accounttype;
    }

    public void setAccounttype(String accounttype) {
        this.accounttype = accounttype;
    }

    public String getNominee1() {
        return nominee1;
    }

    public void setNominee1(String nominee1) {
        this.nominee1 = nominee1;
    }

    public String getRelationship1() {
        return relationship1;
    }

    public void setRelationship1(String relationship1) {
        this.relationship1 = relationship1;
    }

    public String getPhonenum1() {
        return phonenum1;
    }

    public void setPhonenum1(String phonenum1) {
        this.phonenum1 = phonenum1;
    }

    public String getEmail1() {
        return email1;
    }

    public void setEmail1(String email1) {
        this.email1 = email1;
    }

    public String getNominee2() {
        return nominee2;
    }

    public void setNominee2(String nominee2) {
        this.nominee2 = nominee2;
    }

    public String getRelationship2() {
        return relationship2;
    }

    public void setRelationship2(String relationship2) {
        this.relationship2 = relationship2;
    }

    public String getPhonenum2() {
        return phonenum2;
    }

    public void setPhonenum2(String phonenum2) {
        this.phonenum2 = phonenum2;
    }

    public String getEmail2() {
        return email2;
    }

    public void setEmail2(String email2) {
        this.email2 = email2;
    }

    public String getUsername() {
        return username;  // updated to lowercase
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAccountNo() {
        return accountNo;
    }

    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo;
    }

	public String getCustId() {
		return custId;
	}

	public void setCustId(String custId) {
		this.custId = custId;
	}
}
