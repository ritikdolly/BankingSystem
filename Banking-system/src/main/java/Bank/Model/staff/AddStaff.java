package Bank.Model.staff;
/*
 fname varchar(45) 
lname varchar(45) 
gender varchar(10) 
dob date 
fatherName varchar(45) 
nationality varchar(45) 
address varchar(150) 
city varchar(50) 
district varchar(50) 
state varchar(50) 
pincode int 
phoneNo varchar(10) 
email varchar(45) 
emergencyNO varchar(10) 
position varchar(45) 
joiningdate date 
workSchedule varchar(45) 
accountNo varchar(11) 
bankName varchar(45) 
taxId varchar(25) 
tenthPassYear year 
schoolName10 varchar(45) 
tenthPercent int 
twelfthPassYear year 
schoolName12 varchar(60) 
twelfthpercent int 
degreeName varchar(60) 
degreepassYear year 
collegeName varchar(60) 
degreepercent int 
previousEmp varchar(45) 
empposition varchar(45) 
empduration int 
leavingreason varchar(200) 
reference1 varchar(45) 
refrelation1 varchar(45) 
refphNo1 varchar(10) 
refemail1 varchar(45) 
reference2 varchar(45) 
refrelation2 varchar(45) 
refphNo2 varchar(10) 
refemail2 varchar(45) 
EmpId varchar(45) PK
 
 
 */
public class AddStaff {
	//Personal Information
	private String fname;
	private String lname;
	private String gender;
	private String dob;
	private String fatherName;
	private String nationally;
	private String address;
	private String city;
	private String district;
	private String state;
	private int pincode;
	private String phoneNumber;
	private String email;
	private String emergencyNo;
	//Employment Information
	private String position;
	private String joiningdate;
	private String workschedule;
	private String accountnumber;
	private String bankname;
	private String taxId;
	private String aadharNo;
	private String panNO;
	//Education Qualification
	private int year10;
	private String schoolname10;
	private int tenthpercent;
	private int year12;
	private String schoolname12;
	private int twelfthpercent;
	private String degreename;
	private int degreeyear;
	private String collegename;
	private int degreepercent;
	//Employment History
	private String previousEmp;
	private String emppostion;
	private int empduration;
	private String leavingreason;
	
	//References 1
	private String reference1;
	private String refrelation1;
	private String refphno1;
	private String refemail1;
	//References 2
	private String reference2;
	private String refrelation2;
	private String refphno2;
	private String refemail2;
	
	//empId and pwd 
	private String empid;
	private String pwd;
	
	
	
	
	public AddStaff() {
		super();
	}
	

	public AddStaff( String empid, String fname, String lname, String position) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.position = position;
		this.empid = empid;
	}


	public AddStaff(String id, String fname, String lname, String dob, String fatherName, String address, String city, String phoneNumber, String emergencyNo, String email, String position, String workschedule, String refName1, String relation1, String refPhNo1, String refEmail1, String refName2, String relation2, String refPhNo2, String refEmail2) {
        this.empid = id;
        this.fname = fname;
        this.lname = lname;
        this.dob = dob;
        this.fatherName = fatherName;
        this.address = address;
        this.city = city;
        this.phoneNumber = phoneNumber;
        this.emergencyNo = emergencyNo;
        this.email = email;
        this.position = position;
        this.workschedule = workschedule;
        this.reference1 = refName1;
        this.refrelation1 = relation1;
        this.refphno1 = refPhNo1;
        this.refemail1 = refEmail1;
        this.reference2 = refName2;
        this.refrelation2 = relation2;
        this.refphno2 = refPhNo2;
        this.refemail2 = refEmail2;
    }

	




	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getLname() {
		return lname;
	}


	public void setLname(String lname) {
		this.lname = lname;
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


	public String getFatherName() {
		return fatherName;
	}


	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}


	public String getNationally() {
		return nationally;
	}


	public void setNationally(String nationally) {
		this.nationally = nationally;
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


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getEmergencyNo() {
		return emergencyNo;
	}


	public void setEmergencyNo(String emergencyNo) {
		this.emergencyNo = emergencyNo;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public String getJoiningdate() {
		return joiningdate;
	}


	public void setJoiningdate(String joiningdate) {
		this.joiningdate = joiningdate;
	}


	public String getWorkschedule() {
		return workschedule;
	}


	public void setWorkschedule(String workschedule) {
		this.workschedule = workschedule;
	}


	public String getAccountnumber() {
		return accountnumber;
	}


	public void setAccountnumber(String accountnumber) {
		this.accountnumber = accountnumber;
	}


	public String getBankname() {
		return bankname;
	}


	public void setBankname(String bankname) {
		this.bankname = bankname;
	}


	public String getTaxId() {
		return taxId;
	}


	public void setTaxId(String taxId) {
		this.taxId = taxId;
	}


	public String getAadharNo() {
		return aadharNo;
	}


	public void setAadharNo(String aadharNo) {
		this.aadharNo = aadharNo;
	}


	public String getPanNO() {
		return panNO;
	}


	public void setPanNO(String panNO) {
		this.panNO = panNO;
	}


	public int getYear10() {
		return year10;
	}


	public void setYear10(int year10) {
		this.year10 = year10;
	}


	public String getSchoolname10() {
		return schoolname10;
	}


	public void setSchoolname10(String schoolname10) {
		this.schoolname10 = schoolname10;
	}


	public int getTenthpercent() {
		return tenthpercent;
	}


	public void setTenthpercent(int tenthpercent) {
		this.tenthpercent = tenthpercent;
	}


	public int getYear12() {
		return year12;
	}


	public void setYear12(int year12) {
		this.year12 = year12;
	}


	public String getSchoolname12() {
		return schoolname12;
	}


	public void setSchoolname12(String schoolname12) {
		this.schoolname12 = schoolname12;
	}


	public int getTwelfthpercent() {
		return twelfthpercent;
	}


	public void setTwelfthpercent(int twelfthpercent) {
		this.twelfthpercent = twelfthpercent;
	}


	public String getDegreename() {
		return degreename;
	}


	public void setDegreename(String degreename) {
		this.degreename = degreename;
	}


	public int getDegreeyear() {
		return degreeyear;
	}


	public void setDegreeyear(int degreeyear) {
		this.degreeyear = degreeyear;
	}


	public String getCollegename() {
		return collegename;
	}


	public void setCollegename(String collegename) {
		this.collegename = collegename;
	}


	public int getDegreepercent() {
		return degreepercent;
	}


	public void setDegreepercent(int degreepercent) {
		this.degreepercent = degreepercent;
	}


	public String getPreviousEmp() {
		return previousEmp;
	}


	public void setPreviousEmp(String previousEmp) {
		this.previousEmp = previousEmp;
	}


	public String getEmppostion() {
		return emppostion;
	}


	public void setEmppostion(String emppostion) {
		this.emppostion = emppostion;
	}


	public int getEmpduration() {
		return empduration;
	}


	public void setEmpduration(int empduration) {
		this.empduration = empduration;
	}


	public String getLeavingreason() {
		return leavingreason;
	}


	public void setLeavingreason(String leavingreason) {
		this.leavingreason = leavingreason;
	}


	public String getReference1() {
		return reference1;
	}


	public void setReference1(String reference1) {
		this.reference1 = reference1;
	}


	public String getRefrelation1() {
		return refrelation1;
	}


	public void setRefrelation1(String refrelation1) {
		this.refrelation1 = refrelation1;
	}


	public String getRefphno1() {
		return refphno1;
	}


	public void setRefphno1(String refphno1) {
		this.refphno1 = refphno1;
	}


	public String getRefemail1() {
		return refemail1;
	}


	public void setRefemail1(String refemail1) {
		this.refemail1 = refemail1;
	}


	public String getReference2() {
		return reference2;
	}


	public void setReference2(String reference2) {
		this.reference2 = reference2;
	}


	public String getRefrelation2() {
		return refrelation2;
	}


	public void setRefrelation2(String refrelation2) {
		this.refrelation2 = refrelation2;
	}


	public String getRefphno2() {
		return refphno2;
	}


	public void setRefphno2(String refphno2) {
		this.refphno2 = refphno2;
	}


	public String getRefemail2() {
		return refemail2;
	}


	public void setRefemail2(String refemail2) {
		this.refemail2 = refemail2;
	}


	public String getEmpid() {
		return empid;
	}


	public void setEmpid(String empid) {
		this.empid = empid;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	@Override
	public String toString() {
		return "AddStaff [fname=" + fname + ", lname=" + lname + ", gender=" + gender + ", dob=" + dob + ", fatherName="
				+ fatherName + ", nationally=" + nationally + ", address=" + address + ", city=" + city + ", district="
				+ district + ", state=" + state + ", pincode=" + pincode + ", phoneNumber=" + phoneNumber + ", email="
				+ email + ", emergencyNo=" + emergencyNo + ", position=" + position + ", joiningdate=" + joiningdate
				+ ", workschedule=" + workschedule + ", accountnumber=" + accountnumber + ", bankname=" + bankname
				+ ", taxId=" + taxId + ", aadharNo=" + aadharNo + ", panNO=" + panNO + ", year10=" + year10
				+ ", schoolname10=" + schoolname10 + ", tenthpercent=" + tenthpercent + ", year12=" + year12
				+ ", schoolname12=" + schoolname12 + ", twelfthpercent=" + twelfthpercent + ", degreename=" + degreename
				+ ", degreeyear=" + degreeyear + ", collegename=" + collegename + ", degreepercent=" + degreepercent
				+ ", previousEmp=" + previousEmp + ", emppostion=" + emppostion + ", empduration=" + empduration
				+ ", leavingreason=" + leavingreason + ", reference1=" + reference1 + ", refrelation1=" + refrelation1
				+ ", refphno1=" + refphno1 + ", refemail1=" + refemail1 + ", reference2=" + reference2
				+ ", refrelation2=" + refrelation2 + ", refphno2=" + refphno2 + ", refemail2=" + refemail2 + ", empid="
				+ empid + ", pwd=" + pwd + "]";
	}


	
}
