package kr.or.matsam.board.web;

import kr.or.matsam.board.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
}
