package kr.or.matsam.image.entity;

public class ImageVO {
    private String imageSerialNo;
    private String contentSerialNo;
    private String contentPath;
    private String imageOriginalName;
    private String imageServerName;

    public String getImageSerialNo() {
        return imageSerialNo;
    }

    public void setImageSerialNo(String imageSerialNo) {
        this.imageSerialNo = imageSerialNo;
    }

    public String getContentSerialNo() {
        return contentSerialNo;
    }

    public void setContentSerialNo(String contentSerialNo) {
        this.contentSerialNo = contentSerialNo;
    }

    public String getContentPath() {
        return contentPath;
    }

    public void setContentPath(String contentPath) {
        this.contentPath = contentPath;
    }

    public String getImageOriginalName() {
        return imageOriginalName;
    }

    public void setImageOriginalName(String imageOriginalName) {
        this.imageOriginalName = imageOriginalName;
    }

    public String getImageServerName() {
        return imageServerName;
    }

    public void setImageServerName(String imageServerName) {
        this.imageServerName = imageServerName;
    }

    @Override
    public String toString() {
        return "ImageVO{" +
                "imageSerialNo='" + imageSerialNo + '\'' +
                ", contentSerialNo='" + contentSerialNo + '\'' +
                ", contentPath='" + contentPath + '\'' +
                ", imageOriginalName='" + imageOriginalName + '\'' +
                ", imageServerName='" + imageServerName + '\'' +
                '}';
    }
}

/*
    image_serial_no 	VARCHAR2(20) PRIMARY KEY,
    content_serial_no 	varchar2(20),
    image_path 			varchar2(100),
    image_original_name varchar2(500),
    image_server_name	varchar2(1000),
    reg_date			date

 */