package kr.or.matsam.board.service;

import kr.or.matsam.board.entity.BoardVO;
import kr.or.matsam.common.entity.Combo;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public interface BoardService {
    public String selectMaxNo() throws Exception;
    //전체 출력
    public List<BoardVO> listAll() throws Exception;
    //게시판 삽입
    public void insert(BoardVO boardVO) throws Exception;
    //수정
    public void modify(BoardVO boardVO) throws Exception;
    //삭제
    public void delete(BoardVO boardVO) throws Exception;
    //상세 정보 (게시물 한개)
    public BoardVO detail(String boardSerialNo) throws Exception;
    //분류코드에 의한 출력
    public List<BoardVO> selectByCateCd(String cateCd) throws Exception;
    //분류이름에 의한 출력
    public List<BoardVO> selectByCateName(String cateCName) throws Exception;
    //CKEditor 파일 업로드
    public void ckImgUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile upload) throws Exception;
}
