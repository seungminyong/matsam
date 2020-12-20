package kr.or.matsam.user.reser.web;

import kr.or.matsam.common.web.SequenceIncreasement;
import kr.or.matsam.reser.detail.entity.ReserDetailVO;
import kr.or.matsam.reser.detail.service.ReserDetailService;
import kr.or.matsam.reser.entity.ReserVO;
import kr.or.matsam.reser.service.ReserService;
import kr.or.matsam.resmenu.entity.ResMenuVO;
import kr.or.matsam.resmenu.service.ResmenuService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/reser")
public class UserReserController {
    static private final Logger LOGGER = LoggerFactory.getLogger(UserReserController.class);
    @Resource(name = "reserService")
    ReserService reserService;

    @Resource(name = "resmenuService")
    ResmenuService resmenuService;

    @Resource(name = "reserDetailService")
    ReserDetailService reserDetailService;

    @Resource(name = "sequence")
    SequenceIncreasement sequence;

    @RequestMapping("/main/{storeSerialNo}")
    public String reserForm(@PathVariable("storeSerialNo") String storeSerialNo, @ModelAttribute("ReserVO") ReserVO reserVO, Model model) throws Exception {
        model.addAttribute("menuVOList", resmenuService.selectByStoreNo(storeSerialNo));
        model.addAttribute("storeNum", storeSerialNo);
        LOGGER.info("reserForm : " + storeSerialNo);

        return "user/reser/main";
    }

    @PostMapping("/add")
    public String reserAdd(@ModelAttribute("ReserVO") ReserVO reserVO, List<ReserDetailVO> detailVOList) throws Exception {
        reserService.insert(reserVO);

        for (ReserDetailVO detailVO : detailVOList) {
            reserDetailService.insert(detailVO);
        }

        return "";
    }

    @RequestMapping("/payment")
    public String paymentForm(HttpServletRequest request, ReserVO reserVO, String[] menuSerialNo, Model model) throws Exception {

        reserVO.setReserDate(request.getParameter("reserDateStr"));
        reserVO.setStoreSerialNo(request.getParameter("storeSerialNo"));

        LOGGER.info("STORE SERIAL NUM : " + reserVO.getStoreSerialNo());

        LOGGER.info(reserVO.toString());

        List<ReserDetailVO> reserDetailVOList = new ArrayList<>();
        List<String> tempList = new ArrayList<>();
        List<ResMenuVO> resMenuVOList = new ArrayList<>();

        for (int index = 0; index < menuSerialNo.length; index++) {
            ResMenuVO temp = new ResMenuVO();
            ReserDetailVO detailTemp = new ReserDetailVO();
            int count = 0;

            if (tempList.contains(menuSerialNo[index]) == false) {
                for (int jdex = index; jdex < menuSerialNo.length; jdex++) {
                    if ((menuSerialNo[index].equals(menuSerialNo[jdex]))) {
                        count++;
                    }
                }
            }

            if (count != 0 && (!menuSerialNo[index].trim().equals(""))) {
                tempList.add(menuSerialNo[index]);
                temp = resmenuService.detail(menuSerialNo[index]);
                detailTemp.setAmount(count);
                detailTemp.setMenuSerialNo(menuSerialNo[index]);
                detailTemp.setAmountPrice(count * temp.getMenuPrice());
                reserDetailVOList.add(detailTemp);
            }
        }

        Integer totalPrice = 0;
        for (ReserDetailVO detailTemp : reserDetailVOList) {
            resMenuVOList.add(resmenuService.detail(detailTemp.getMenuSerialNo()));
            totalPrice += detailTemp.getAmountPrice();
        }

        reserVO.setTotalPrice(totalPrice);

        model.addAttribute("reserDateStr", request.getParameter("reserDateStr"));
        model.addAttribute("reserDetailVOList", reserDetailVOList);
        model.addAttribute("reserVO", reserVO);
        model.addAttribute("resMenuList", resMenuVOList);
        return "user/reser/payment";
    }

    @PostMapping("/payment")
    public String payment(String[] menuSerialNo, String[] amount, String[] amountPrice, ReserVO reserVO, HttpServletRequest request) throws Exception {
        reserVO.setReserDate(request.getParameter("reserDateStr"));
        reserVO.setReserSerialNo(sequence.sequenceIncreasement(reserService.getMaxNo(), "RES01"));

        reserService.insert(reserVO);



        for (int index = 0; index < menuSerialNo.length; index++) {
            ReserDetailVO detailVO = new ReserDetailVO();
            detailVO.setDetailSerialNo(sequence.sequenceIncreasement(reserDetailService.getMaxNo(), "RES01DE"));
            LOGGER.info(detailVO.getDetailSerialNo());

            detailVO.setReserSerialNo(reserVO.getReserSerialNo());
            LOGGER.info(detailVO.getReserSerialNo());
            detailVO.setMenuSerialNo(menuSerialNo[index]);
            detailVO.setAmount(Integer.parseInt(amount[index]));
            detailVO.setAmountPrice(Integer.parseInt(amountPrice[index]));
            LOGGER.info("DETAIL : " + detailVO.toString());
            reserDetailService.insert(detailVO);

            System.out.println(detailVO);
        }

        return "redirect:/reser/list";
    }

    @RequestMapping("/detail")
    public String detail() throws Exception {
        return "";
    }

    @RequestMapping("/list")
    public String list(Model model) throws Exception {
        model.addAttribute("reserVOList", reserService.listAll());

        return "user/reser/list";
    }
}
