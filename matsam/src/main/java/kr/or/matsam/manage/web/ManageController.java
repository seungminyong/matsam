package kr.or.matsam.manage.web;

import kr.or.matsam.common.web.SequenceIncreasement;
import kr.or.matsam.manage.entity.ManageVO;
import kr.or.matsam.manage.service.ManageService;
import kr.or.matsam.manage.tag.entity.TagVO;
import kr.or.matsam.manage.tag.service.TagService;
import kr.or.matsam.manage.time.entity.TimeVO;
import kr.or.matsam.manage.time.serivce.TimeServcie;
import kr.or.matsam.resmenu.entity.ResMenuVO;
import kr.or.matsam.resmenu.service.ResmenuService;
import kr.or.matsam.user.entity.UserAuth;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/manage")
public class ManageController {
    @Resource(name = "manageService")
    ManageService manageService;

    @Resource(name = "tagService")
    TagService tagService;

    @Resource(name = "timeService")
    TimeServcie timeService;

    @Resource(name = "sequence")
    SequenceIncreasement sequence;

    @Resource(name = "resmenuService")
    ResmenuService resMenuService;

    @RequestMapping("/main")
    public String main() throws Exception {
        return "/user/owner/main";
    }

    @RequestMapping("/resAdd")
    public String resAddForm() throws Exception {
        return "/user/owner/info/add";
    }

    @PostMapping("/resAdd")
    public String resAdd(HttpServletRequest request, Model model, ManageVO manageVO, String[] resPhoneArr, String[] menuTagContentArr,
                         String[] serviceTagContentArr, String[] resTimeStartArr, String[] resTimeEndArr) throws Exception {
        //HttpSession session = request.getSession();
        //UserAuth userAuth = (UserAuth)session.getAttribute("userAuth");
        //manageVO.setUserSerialNo(userAuth.getUserSerialNo());

        manageVO.setResSerialNo(sequence.sequenceIncreasement(manageService.getMaxNo(),"RES"));

        String resPhone = "";
        for(String phone : resPhoneArr) {
            resPhone += phone;
        }

        manageVO.setResPhone(resPhone);
        manageService.insert(manageVO);

        for (String hashTag : menuTagContentArr) {
            TagVO tagVO = new TagVO();
            tagVO.setResSerialNo(manageVO.getResSerialNo());
            tagVO.setCateCd("HASHTAG");
            tagVO.setTagContent(hashTag);

            tagService.insert(tagVO);
        }

        for (String serviceTag : serviceTagContentArr) {
            TagVO tagVO = new TagVO();
            tagVO.setResSerialNo(manageVO.getResSerialNo());
            tagVO.setCateCd("SERVICETAG");
            tagVO.setTagContent(serviceTag);

            tagService.insert(tagVO);
        }

        for (int index = 0; index < resTimeStartArr.length; index++) {
            TimeVO timeVO = new TimeVO();
            timeVO.setResSerialNo(manageVO.getResSerialNo());
            timeVO.setResTimeStartStr(resTimeStartArr[index]);
            timeVO.setResTimeEndStr(resTimeEndArr[index]);
            timeService.insert(timeVO);
        }

        return "redirect:/manage/main";
    }

    @RequestMapping("/detail/{resSrialNo}")
    public String detail(@PathVariable("resSerialNo") String resSerialNo, Model model) throws Exception {
        model.addAttribute("manageVO", manageService.resDetail(resSerialNo));
        model.addAttribute("menuVOList", resMenuService.selectByStoreNo(resSerialNo));
        model.addAttribute("timeVOList", timeService.listAll(resSerialNo));
        model.addAttribute("tagVOList", tagService.listAll(resSerialNo));
        return "user/owner/info/detail";
    }

    @RequestMapping("/list")
    public String testList(Model model) throws Exception {
        model.addAttribute("manageVOList", manageService.listAll());

        return "/user/owner/testList";
    }
}
