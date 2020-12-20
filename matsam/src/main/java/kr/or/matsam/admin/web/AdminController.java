package kr.or.matsam.admin.web;

import kr.or.matsam.admin.entity.AdminVO;
import kr.or.matsam.admin.entity.AuthInfo;
import kr.or.matsam.admin.service.AdminService;
import kr.or.matsam.admin.service.IdPasswordNotMatchingException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/adm")
public class AdminController {
    private static final Logger LOGGER = LoggerFactory.getLogger(AdminController.class);

    @Resource(name = "adminService")
    AdminService adminService;

    @RequestMapping("/main")
    public String mainForm() throws Exception {
        return "admin/main";
    }

    @RequestMapping("/login")
    public String loginForm(@ModelAttribute("AdminVO") AdminVO adminVO) throws Exception {
        return "admin/login";
    }

    @PostMapping("/loginReg")
    public String login(@ModelAttribute("AdminVO") AdminVO adminVO, HttpSession session) throws Exception {
        try {
            AuthInfo authInfo = adminService.loginSession(adminVO);
            session.setAttribute("authInfo", authInfo);
            session.setMaxInactiveInterval(600);

            return "redirect:/adm/main";
        } catch(IdPasswordNotMatchingException exception) {
            return "admin/login";
        }
    }

    @RequestMapping("/general/add")
    public String addForm() throws Exception {
        return "";
    }

    @PostMapping("/general/add")
    public String add() throws Exception {
        return "";
    }

    @RequestMapping("/general/main")
    public String list(Model model) throws Exception {
        model.addAttribute("voList",adminService.listAll());

        return "admin/general/main";
    }

    @RequestMapping("/general/detail/{admConno}")
    public String detail(@PathVariable("admConno") String admConno, Model model) throws Exception {
        model.addAttribute("adminVO", adminService.detail(admConno));
        return "admin/general/detail";
    }

    @RequestMapping("/general/delete")
    public String deleteForm() {
        return "";
    }
}
