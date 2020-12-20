package kr.or.matsam.common.web;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;

@Repository("fileUpload")
public class FileUpload {
    public static String fileUpload(MultipartFile multipartFile, HttpServletRequest request) {
        String path = request.getRealPath("/up");
        path = request.getSession().getServletContext().getRealPath("/") + "ckupload";

        String res = fileNewName(path, multipartFile.getOriginalFilename());

        try {
            FileOutputStream fos = new FileOutputStream(path + "\\" + res);

            fos.write(multipartFile.getBytes());

            fos.close();

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return res;
    }

    static String fileNewName(String path, String multipartFile) {

        path += "\\";
        try {


            int pos = multipartFile.lastIndexOf(".");
            String domain = multipartFile.substring(0, pos);
            String ext = multipartFile.substring(pos);


            File newFile = new File(path + multipartFile);
            int i = 0;
            while (newFile.exists()) {
                i++;
                multipartFile = domain + "_" + i + ext;
                newFile = new File(path + multipartFile);

            }
            // System.out.println(newFile.getPath());


        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return multipartFile;
    }
}
