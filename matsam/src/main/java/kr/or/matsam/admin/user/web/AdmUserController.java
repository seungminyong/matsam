package kr.or.matsam.admin.user.web;

import kr.or.matsam.manage.service.ManageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/adm/user")
public class AdmUserController {
    @Resource(name = "manageService")
    ManageService manageService;


    @RequestMapping("/main")
    public String mainForm(Model model) {

        return "admin/user/main";
    }

    @RequestMapping("/list/{gradeCd}")
    public String list(@PathVariable("gradeCd") String gardeCd)
    {
        return "";
    }

}
