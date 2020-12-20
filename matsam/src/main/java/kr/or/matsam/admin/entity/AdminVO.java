package kr.or.matsam.admin.entity;

import java.util.Date;

public class AdminVO {
    private String admConno;
    private String admId;
    private String admPassword;
    private String admName;
    private String admPhone;
    private String admUseYn;
    private Date regDate;
    private Date updateDate;

    public String getAdmPhone() {
        return admPhone;
    }

    public void setAdmPhone(String admPhone) {
        this.admPhone = admPhone;
    }

    public String getAdmName() {
        return admName;
    }

    public void setAdmName(String admName) {
        this.admName = admName;
    }

    public String getAdmConno() {
        return admConno;
    }

    public void setAdmConno(String admConno) {
        this.admConno = admConno;
    }

    public String getAdmId() {
        return admId;
    }

    public void setAdmId(String admId) {
        this.admId = admId;
    }

    public String getAdmPassword() {
        return admPassword;
    }

    public void setAdmPassword(String admPassword) {
        this.admPassword = admPassword;
    }

    public String getAdmUseYn() {
        return admUseYn;
    }

    public void setAdmUseYn(String admUseYn) {
        this.admUseYn = admUseYn;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public boolean matchPassword(String admPassword) {
        return this.admPassword.equals(admPassword);
    }

}
