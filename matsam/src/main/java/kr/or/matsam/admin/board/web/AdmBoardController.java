package kr.or.matsam.admin.board.web;

import kr.or.matsam.admin.entity.AuthInfo;
import kr.or.matsam.admin.web.AdminController;
import kr.or.matsam.board.entity.BoardVO;
import kr.or.matsam.board.service.BoardService;
import kr.or.matsam.common.web.FileUpload;
import kr.or.matsam.common.web.SequenceIncreasement;
import kr.or.matsam.common.web.UploadFileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/adm/board")
public class AdmBoardController {
    private static final Logger LOGGER = LoggerFactory.getLogger(AdminController.class);

    @Resource(name = "boardService")
    BoardService boardService;

    @Resource(name = "fileUpload")
    FileUpload fileUpload;

    @Resource(name = "sequence")
    SequenceIncreasement sequence;

    @RequestMapping("/main")
    public String main(Model model) throws Exception {
        model.addAttribute("voList", boardService.listAll());
        List<BoardVO> list = boardService.listAll();

        for(BoardVO temp : list) {
            LOGGER.info("TEST : " + temp.getBoardTitle());
        }

        return "admin/board/main";
    }

    @RequestMapping("/add")
    public String addForm(@ModelAttribute("BoardVO") BoardVO boardVO) throws Exception {
        return "admin/board/add";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("BoardVO") BoardVO boardVO,@SessionAttribute("authInfo") AuthInfo authInfo) throws Exception {
        System.out.println(boardVO.toString());
        boardVO.setUserEmail(authInfo.getAdmId());
        boardVO.setUserSerialNo(authInfo.getAdmConno());

        String target = boardService.selectMaxNo();
        if(target == null) {
            target = "";
        }

        boardVO.setBoardSerialNo(sequence.sequenceIncreasement(target,"BD01"));

        boardService.insert(boardVO);

        return "redirect:/adm/board/main";
    }

    @RequestMapping("/modify/{boardSerialNo}")
    public String modifyForm(@PathVariable("boardSerialNo") String boardSerialNo ,Model model) throws Exception {
        BoardVO vo = boardService.detail(boardSerialNo);

        LOGGER.info("VO : " + vo.toString());

        model.addAttribute("boardVO", vo);

        return "admin/board/detail";
    }

    @PostMapping("/modify")
    public String modify(BoardVO boardVO) throws Exception {
        LOGGER.info("MODIFY " + boardVO.toString());
        boardService.modify(boardVO);
        return "redirect:/adm/board/main";
    }

    @RequestMapping("/main/{cateCd}")
    public String selectByCateName(@PathVariable("cateCd") String cateCd, Model model) throws Exception {
        model.addAttribute("voList", boardService.selectByCateCd(cateCd));
        return "admin/board/main";
    }


    @RequestMapping(value = "/ckupload")
    public String ckImgUpload(HttpServletRequest request, Model model, @RequestParam("upload") MultipartFile upload) throws Exception {
        String path = "{\"url\" : \"/ckupload/";
        model.addAttribute("data",path + fileUpload.fileUpload(upload, request) + "\"}");

        return "admin/ajax/ckupload";
    }
}
