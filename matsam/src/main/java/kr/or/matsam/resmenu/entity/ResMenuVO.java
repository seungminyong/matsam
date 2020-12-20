package kr.or.matsam.resmenu.entity;

public class ResMenuVO {
    private String menuSerialNo;
    private String resSeriralNum;
    private String menuName;
    private Integer menuPrice;
    private Integer menuLeastP;
    private String menuExplain;

    public ResMenuVO() {

    }

    public String getMenuSerialNo() {
        return menuSerialNo;
    }

    public void setMenuSerialNo(String menuSerialNo) {
        this.menuSerialNo = menuSerialNo;
    }

    public String getResSeriralNum() {
        return resSeriralNum;
    }


    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public Integer getMenuPrice() {
        return menuPrice;
    }

    public void setMenuPrice(Integer menuPrice) {
        this.menuPrice = menuPrice;
    }

    public void setResSeriralNum(String resSeriralNum) {
        this.resSeriralNum = resSeriralNum;
    }

    public Integer getMenuLeastP() {
        return menuLeastP;
    }

    public String getMenuExplain() {
        return menuExplain;
    }

    public void setMenuExplain(String menuExplain) {
        this.menuExplain = menuExplain;
    }

}
