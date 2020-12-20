package kr.or.matsam.test.web;

import kr.or.matsam.common.entity.Combo;
import kr.or.matsam.test.entity.MapTestVO;
import kr.or.matsam.test.service.ComboService;
import kr.or.matsam.test.service.MapService;
import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/test")
public class TestController {
    private static Logger LOGGER = LoggerFactory.getLogger(TestController.class);

    @Resource(name="mapService")
    MapService mapService;

    @Resource(name="comboService")
    ComboService comboService;

    @RequestMapping("/form")
    String testForm() {
        return "test/ajaxTest";
    }

    @ResponseBody
    @PostMapping("/test")
    void test(@RequestBody String date) throws Exception {
        System.out.println("HERE");
        System.out.println(date);

        LOGGER.info("TEST");

    }

    @RequestMapping("/map/add")
    String addForm() {
        return "test/map/insert";
    }

    @PostMapping("/map/addReg")
    String add(@ModelAttribute("mapTestVO") MapTestVO mapVO) throws Exception {
        mapService.insert(mapVO);
        return "redirect:/test/map/list";
    }

    @RequestMapping("/map/list")
    String mapList(Model model) throws Exception {
        model.addAttribute("voList",mapService.listAll());
        return "test/map/list";
    }

    @RequestMapping("/uploadForm")
    String uploadForm() {
        return "admin/board/cktest";
    }

    @PostMapping("/upload")
    String testUpload(@Param("content") String content) throws Exception {
        System.out.println(content);

        return "";
    }

    @RequestMapping("/commonForm")
    String commonForm(Model model) throws Exception {
       // model.addAttribute("data",comboService.listAll());
        return "test/common/form";
    }

    @RequestMapping("/commonReg")
    String commonReg(Combo combo) throws Exception {
        comboService.insert(combo);
        return "redirect:/test/commonForm";
    }

    @RequestMapping("/commonList")
    String commonList(Model model) throws Exception {
        List<Combo> comboList = comboService.listAll();
        for(Combo combo : comboList) {
            System.out.println(combo.getLabel());
            System.out.println(combo.getValue());
        }
        model.addAttribute("data", comboList);
        return "test/common/list";
    }
}

