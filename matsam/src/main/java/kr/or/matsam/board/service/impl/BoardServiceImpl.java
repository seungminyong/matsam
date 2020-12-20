package kr.or.matsam.board.service.impl;

import kr.or.matsam.board.entity.BoardVO;
import kr.or.matsam.board.service.BoardService;
import kr.or.matsam.common.entity.Combo;
import kr.or.matsam.common.web.UploadFileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;
import java.util.UUID;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
    private static Logger LOGGER = LoggerFactory.getLogger(BoardServiceImpl.class);
    @Resource(name="boardMapper")
    BoardMapper boardMapper;

    @Resource(name="uploadFileUtils")
    UploadFileUtils uploadFileUtils;

    @Override
    public String selectMaxNo() throws Exception {
        return boardMapper.selectMaxNo();
    }

    @Override
    public List<BoardVO> listAll() throws Exception {
        return boardMapper.listAll();
    }

    @Override
    public void insert(BoardVO boardVO) throws Exception {
        boardMapper.insert(boardVO);
    }

    @Override
    public void modify(BoardVO boardVO) throws Exception {
        boardMapper.modify(boardVO);
    }

    @Override
    public void delete(BoardVO boardVO) throws Exception {
        boardMapper.delete(boardVO);
    }

    @Override
    public BoardVO detail(String boardSerialNo) throws Exception {
        return boardMapper.detail(boardSerialNo);
    }

    @Override
    public List<BoardVO> selectByCateCd(String cateCd) throws Exception {
        return boardMapper.selectByCateCd(cateCd);
    }

    @Override
    public List<BoardVO> selectByCateName(String cateCName) throws Exception {
        return null;
    }

    /*
    @Override
    public void ckImgUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile upload) throws Exception {
        UUID uid = UUID.randomUUID();

        OutputStream out = null;
        PrintWriter printWriter = null;

        //인코딩
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        try {
            String fileName = upload.getOriginalFilename();
            LOGGER.info(fileName);
            byte[] bytes = upload.getBytes();

            String ckUploadPath = uploadFileUtils.uploadPath + File.separator + "ckupload" + File.separator + uid + "_" + fileName;

            out = new FileOutputStream(new File(ckUploadPath));
            out.write(bytes);
            out.flush();

            String callback = request.getParameter("CKEditorFuncNum");
            printWriter = response.getWriter();
            String fileUrl = uploadFileUtils.uploadPath + "/ckupload/" + uid + "_" + fileName;// 작성화면

            // 업로드시 메시지 출력
            printWriter.println("<script type='text/javascript'>"
                    + "window.parent.CKEDITOR.tools.callFunction("
                    + callback + ",'" + fileUrl + "','이미지를 업로드하였습니다.')"
                    + "</script>");
            printWriter.println("{\"filename\" : \"" + fileName + "\", \"uploaded\" : 1, \"url\":\"" + fileUrl + "\"}");


            printWriter.flush();

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return;
    }
     */


    @Override
    public void ckImgUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile upload) throws Exception {
        UUID uid = UUID.randomUUID();

        OutputStream out = null;
        PrintWriter printWriter = null;

        // 인코딩
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        try {

            String fileName = upload.getOriginalFilename();// 파일 이름 가져오기
            byte[] bytes = upload.getBytes();

            String path = request.getSession().getServletContext().getRealPath("/");

            String realPath = request.getSession().getServletContext().getRealPath("/") + "ckupload";

            // 업로드 경로
            String ckUploadPath = path + "ckupload" + File.separator + uid + "_" + fileName;

            LOGGER.info("ckUploadPath : {} ", ckUploadPath);

            File file = new File(realPath);
            if (!file.exists()) {
                try {
                    file.mkdirs();
                } catch (Exception e) {
                    e.getStackTrace();
                }
            }

            out = new FileOutputStream(new File(ckUploadPath));
            out.write(bytes);
            out.flush();

            String callback = request.getParameter("CKEditorFuncNum");
            printWriter = response.getWriter();
//            String fileUrl = path +"ckupload\\" + uid + "_" + fileName;// 작성화면
            String fileUrl = "/adm/ckimgview?uid=" + uid + "&fileName=" + fileName;

            LOGGER.info("fileUrl : {}", fileUrl);
            LOGGER.info("fileName : {}", fileName);

            // 업로드시 메시지 출력
            printWriter.println("<script type='text/javascript'>"
                    + "window.parent.CKEDITOR.tools.callFunction("
                    + callback + ",'" + fileUrl + "','이미지를 업로드하였습니다.')"
                    + "</script>");

            printWriter.println("{\"filename\" : \"" + fileName + "\", \"uploaded\" : 1, \"url\":\"" + fileUrl + "\"}");


            printWriter.flush();

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return;
    }


    /*
    @Override
    public void ckImgUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile upload) throws Exception {
        String path = request.getRealPath("upup");
        path = request.getSession().getServletContext().getRealPath("/ckupload/");
        System.out.println("==============");
        System.out.println(path);

        int size = 10*1024*1024;

        try {
            MultipartRequest mm = new MultipartRequest(
                    request,
                    path,
                    size,
                    "utf-8",
                    new DefaultFileRenamePolicy()
            )

            request.setAttribute("data", "../"+mm.getFilesystemName("upload"));


        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
     */
}
