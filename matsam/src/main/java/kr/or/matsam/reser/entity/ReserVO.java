package kr.or.matsam.reser.entity;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ReserVO {
    private String reserSerialNo;
    private String storeSerialNo;
    private String userSerialNo;
    private String userName;
    private String userPhone;
    private Integer totalPrice;
    private String reserContent;
    private Date reserDate;
    private Date regDate;

    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    public void setReserDate(String reserDate) throws ParseException {
        this.reserDate = simpleDateFormat.parse(reserDate);
    }

    public String getReserSerialNo() {
        return reserSerialNo;
    }

    public void setReserSerialNo(String reserSerialNo) {
        this.reserSerialNo = reserSerialNo;
    }

    public String getStoreSerialNo() {
        return storeSerialNo;
    }

    public void setStoreSerialNo(String storeSerialNo) {
        this.storeSerialNo = storeSerialNo;
    }

    public String getUserSerialNo() {
        return userSerialNo;
    }

    public void setUserSerialNo(String userSerialNo) {
        this.userSerialNo = userSerialNo;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public Integer getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getReserContent() {
        return reserContent;
    }

    public void setReserContent(String reserContent) {
        this.reserContent = reserContent;
    }

    public Date getReserDate() {
        return reserDate;
    }

    public void setReserDate(Date reserDate) {
        this.reserDate = reserDate;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    @Override
    public String toString() {
        return "ReserVO{" +
                "reserSerialNo='" + reserSerialNo + '\'' +
                ", storeSerialNo='" + storeSerialNo + '\'' +
                ", userSerialNo='" + userSerialNo + '\'' +
                ", userName='" + userName + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", totalPrice=" + totalPrice +
                ", reserContent='" + reserContent + '\'' +
                ", reserDate=" + reserDate +
                ", regDate=" + regDate +
                '}';
    }
}
