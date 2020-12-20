package com.user.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
@Alias("userVO")
public class UserVO {
	String email,password,phone,nickname,name,grade_cd;
	String user_yn="Y";
	String license_number,license_resname,license_address;
	Date regdate;
	Integer user_serial_no;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGrade_cd() {
		return grade_cd;
	}
	public void setGrade_cd(String grade_cd) {
		this.grade_cd = grade_cd;
	}
	public String getUser_yn() {
		return user_yn;
	}
	public void setUser_yn(String user_yn) {
		this.user_yn = user_yn;
	}
	public String getLicense_number() {
		return license_number;
	}
	public void setLicense_number(String license_number) {
		this.license_number = license_number;
	}
	public String getLicense_resname() {
		return license_resname;
	}
	public void setLicense_resname(String license_resname) {
		this.license_resname = license_resname;
	}
	public String getLicense_address() {
		return license_address;
	}
	public void setLicense_address(String license_address) {
		this.license_address = license_address;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Integer getUser_serial_no() {
		return user_serial_no;
	}
	public void setUser_serial_no(Integer user_serial_no) {
		this.user_serial_no = user_serial_no;
	}
	@Override
	public String toString() {
		return "UserVO [email=" + email + ", password=" + password + ", phone=" + phone + ", nickname=" + nickname
				+ ", name=" + name + ", grade_cd=" + grade_cd + ", user_yn=" + user_yn + ", license_number="
				+ license_number + ", license_resname=" + license_resname + ", license_address=" + license_address
				+ ", regdate=" + regdate + ", user_serial_no=" + user_serial_no + "]";
	}
	
	

	
	
}
