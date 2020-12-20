package kr.or.matsam.reser.detail.entity;

public class ReserDetailVO {
    private String detailSerialNo;
    private String reserSerialNo;
    private String menuSerialNo;
    private Integer amountPrice;
    private Integer amount;

    public String getDetailSerialNo() {
        return detailSerialNo;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setDetailSerialNo(String detailSerialNo) {
        this.detailSerialNo = detailSerialNo;
    }

    public String getReserSerialNo() {
        return reserSerialNo;
    }

    public void setReserSerialNo(String reserSerialNo) {
        this.reserSerialNo = reserSerialNo;
    }

    public String getMenuSerialNo() {
        return menuSerialNo;
    }

    public void setMenuSerialNo(String menuSerialNo) {
        this.menuSerialNo = menuSerialNo;
    }

    public Integer getAmountPrice() {
        return amountPrice;
    }

    public void setAmountPrice(Integer amountPrice) {
        this.amountPrice = amountPrice;
    }

    @Override
    public String toString() {
        return "ReserDetailVO{" +
                "detailSerialNo='" + detailSerialNo + '\'' +
                ", reserSerialNo='" + reserSerialNo + '\'' +
                ", menuSerialNo='" + menuSerialNo + '\'' +
                ", amountPrice=" + amountPrice +
                '}';
    }

}
