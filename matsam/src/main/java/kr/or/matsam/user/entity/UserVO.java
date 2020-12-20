package kr.or.matsam.user.entity;

import org.apache.ibatis.type.Alias;

import java.util.Date;

@Alias("userVO")
public class UserVO {
	private String userEmail;
	private String userPassword;
	private String userPhone;
	private String userNicName;
	private String userName;
	private String userGradeCd;
	private String userYn = "Y";
	private String licenseNumber;
	private String licenseResname;
	private String licenseAddress;
	private Date regdate;
	private String userSerialNo;

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserNicName() {
		return userNicName;
	}

	public void setUserNicName(String userNicName) {
		this.userNicName = userNicName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserGradeCd() {
		return userGradeCd;
	}

	public void setUserGradeCd(String userGradeCd) {
		this.userGradeCd = userGradeCd;
	}

	public String getUserYn() {
		return userYn;
	}

	public void setUserYn(String userYn) {
		this.userYn = userYn;
	}

	public String getLicenseNumber() {
		return licenseNumber;
	}

	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}

	public String getLicenseResname() {
		return licenseResname;
	}

	public void setLicenseResname(String licenseResname) {
		this.licenseResname = licenseResname;
	}

	public String getLicenseAddress() {
		return licenseAddress;
	}

	public void setLicenseAddress(String licenseAddress) {
		this.licenseAddress = licenseAddress;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getUserSerialNo() {
		return userSerialNo;
	}

	public void setUserSerialNo(String userSerialNo) {
		this.userSerialNo = userSerialNo;
	}

	@Override
	public String toString() {
		return "UserVO{" +
				"userEmail='" + userEmail + '\'' +
				", userPassword='" + userPassword + '\'' +
				", userPhone='" + userPhone + '\'' +
				", userNicName='" + userNicName + '\'' +
				", userName='" + userName + '\'' +
				", userGradeCd='" + userGradeCd + '\'' +
				", userYn='" + userYn + '\'' +
				", licenseNumber='" + licenseNumber + '\'' +
				", licenseResname='" + licenseResname + '\'' +
				", licenseAddress='" + licenseAddress + '\'' +
				", regdate=" + regdate +
				", userSerialNo='" + userSerialNo + '\'' +
				'}';
	}
}
