package kr.or.matsam.manage.entity;

import java.util.Date;

public class ManageVO {
    private String userSerialNo;
    private String resSerialNo;
    private String resName;
    private String resLocation;
    private String resPhone;
    private Integer resPrice;
    private Integer resTwoTable;
    private Integer resFourTable;
    private Integer resMayTable;
    private String resExplain;
    private String resRegState;
    private Date regDate;
    private Date updateDate;

    public String getResRegState() {
        return resRegState;
    }

    public void setResRegState(String resRegState) {
        this.resRegState = resRegState;
    }

    public String getUserSerialNo() {
        return userSerialNo;
    }

    public void setUserSerialNo(String userSerialNo) {
        this.userSerialNo = userSerialNo;
    }

    public String getResSerialNo() {
        return resSerialNo;
    }

    public void setResSerialNo(String resSerialNo) {
        this.resSerialNo = resSerialNo;
    }

    public String getResName() {
        return resName;
    }

    public void setResName(String resName) {
        this.resName = resName;
    }

    public String getResLocation() {
        return resLocation;
    }

    public void setResLocation(String resLocation) {
        this.resLocation = resLocation;
    }

    public String getResPhone() {
        return resPhone;
    }

    public void setResPhone(String resPhone) {
        this.resPhone = resPhone;
    }

    public Integer getResPrice() {
        return resPrice;
    }

    public void setResPrice(Integer resPrice) {
        this.resPrice = resPrice;
    }

    public Integer getResTwoTable() {
        return resTwoTable;
    }

    public void setResTwoTable(Integer resTwoTable) {
        this.resTwoTable = resTwoTable;
    }

    public Integer getResFourTable() {
        return resFourTable;
    }

    public void setResFourTable(Integer resFourTable) {
        this.resFourTable = resFourTable;
    }

    public Integer getResMayTable() {
        return resMayTable;
    }

    public void setResMayTable(Integer resMayTable) {
        this.resMayTable = resMayTable;
    }

    public String getResExplain() {
        return resExplain;
    }

    public void setResExplain(String resExplain) {
        this.resExplain = resExplain;
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

}
