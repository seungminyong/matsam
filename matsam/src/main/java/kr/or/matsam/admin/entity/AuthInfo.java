package kr.or.matsam.admin.entity;

public class AuthInfo {
    private static final long serialVersionUID = 1L;

    private String admConno;
    private String admId;
    private String admName;

    public AuthInfo(String admNo, String admId, String admName) {
        this.admConno = admNo;
        this.admId = admId;
        this.admName = admName;
    }

    public String getAdmName() {
        return admName;
    }

    public String getAdmConno() {
        return admConno;
    }

    public String getAdmId() {
        return admId;
    }
}
