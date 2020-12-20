package kr.or.matsam.board.entity;

import kr.or.matsam.common.entity.Combo;

import java.util.Date;

public class BoardVO extends Combo {
    private String boardSerialNo;
    private String userSerialNo;
    private String userEmail;
    private String boardTitle;
    private String boardContent;
    private Date regDate;
    private Date updateDate;

    public String getBoardSerialNo() {
        return boardSerialNo;
    }

    public void setBoardSerialNo(String boardSerialNo) {
        this.boardSerialNo = boardSerialNo;
    }

    public String getUserSerialNo() {
        return userSerialNo;
    }

    public void setUserSerialNo(String userSerialNo) {
        this.userSerialNo = userSerialNo;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getBoardTitle() {
        return boardTitle;
    }

    public void setBoardTitle(String boardTitle) {
        this.boardTitle = boardTitle;
    }

    public String getBoardContent() {
        return boardContent;
    }

    public void setBoardContent(String boardContent) {
        this.boardContent = boardContent;
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

    @Override
    public String toString() {
        return "BoardVO{" +
                "boardSerialNo='" + boardSerialNo + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", boardTitle='" + boardTitle + '\'' +
                ", boardContent='" + boardContent + '\'' +
                ", label='" + getLabel() + '\'' +
                '}';
    }

}
