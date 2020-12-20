package kr.or.matsam.board.web;

import kr.or.matsam.board.entity.BoardVO;
import kr.or.matsam.board.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Resource(name = "boardService")
    BoardService boardService;

    @RequestMapping("/list")
    public String listAll(Model model) throws Exception {
        model.addAttribute("voList", boardService.listAll());
        	
        return "board/list";
    }
    
    @RequestMapping("/detail/{boardSerialNo}")
    public String detail(@PathVariable("boardSerialNo") String boardSerialNo, Model model) throws Exception {
        BoardVO boardVO = boardService.detail(boardSerialNo);
        model.addAttribute("vo",boardVO);	
        return "board/boardDetail";
    }
   
}
