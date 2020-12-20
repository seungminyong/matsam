package kr.or.matsam.common.web;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;
import org.springframework.util.FileCopyUtils;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

@Repository("uploadFileUtils")
public class UploadFileUtils {
    public static String uploadPath = "h:\\image\\";

    public static String fileUpload(String fileName, byte[] fileData, String ymdPath) throws Exception {
        UUID uid = UUID.randomUUID();
        String newFileName = uid + "_" + fileName;
        String imgPath = uploadPath + ymdPath;

        File target = new File(imgPath, newFileName);
        FileCopyUtils.copy(fileData, target);


        String thumbFileName = "s_" + newFileName;
        File image = new File(imgPath + File.separator + newFileName);

        File thumbnail = new File(imgPath + File.separator + "s" + File.separator + thumbFileName);

        if (image.exists()) {
            thumbnail.getParentFile().mkdirs();
        }
        return newFileName;
    }

    public static String calcPath(String uploadPath) {
        Calendar cal = Calendar.getInstance();
        String yearPath = File.separator + cal.get(Calendar.YEAR);
        String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
        String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));

        makeDir(uploadPath, yearPath, monthPath, datePath);
        makeDir(uploadPath, yearPath, monthPath, datePath + "\\s");

        return datePath;
    }


    private static void makeDir(String uploadPath, String... paths) {

        if (new File(paths[paths.length - 1]).exists()) {
            return;
        }
        for (String path : paths) {
            File dirPath = new File(uploadPath + path);
            if (!dirPath.exists()) {
                dirPath.mkdir();
            }
        }
    }

}
