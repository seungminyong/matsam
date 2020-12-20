package kr.or.matsam.manage.time.entity;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeVO {
    private String resSerialNo;
    private Date resTimeStart;
    private Date resTimeEnd;

    private String resTimeStartStr;
    private String resTimeEndStr;

    private SimpleDateFormat dateFormat = new SimpleDateFormat("hh:mm");

    public void setResTimeStartStr(String resTimeStartStr) throws ParseException {
        this.resTimeStartStr = resTimeStartStr;
        resTimeStart = dateFormat.parse(resTimeStartStr);
    }

    public void setResTimeEndStr(String resTimeEndStr) throws Exception {
        this.resTimeEndStr = resTimeEndStr;
        resTimeEnd = dateFormat.parse(resTimeEndStr);
    }

    public String getResTimeEndStr() {
        return resTimeEndStr;
    }

    public String getResTimeStartStr() {
        return resTimeStartStr;
    }

    public String getResSerialNo() {
        return resSerialNo;
    }

    public void setResSerialNo(String resSerialNo) {
        this.resSerialNo = resSerialNo;
    }

    public Date getResTimeStart() {
        return resTimeStart;
    }

    public void setResTimeStart(Date resTimeStart) {
        this.resTimeStart = resTimeStart;
    }

    public Date getResTimeEnd() {
        return resTimeEnd;
    }

    public void setResTimeEnd(Date resTimeEnd) {
        this.resTimeEnd = resTimeEnd;
    }
}
