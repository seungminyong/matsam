package kr.or.matsam.reser.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/reser")
public class ReserController {

    @RequestMapping("/main")
    public String reserForm() throws Exception {
        return "user/reser/main";
    }
}
