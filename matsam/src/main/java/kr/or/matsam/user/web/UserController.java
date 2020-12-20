package kr.or.matsam.user.web;
import java.util.HashMap;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kr.or.matsam.user.entity.UserAuth;
import kr.or.matsam.user.entity.UserVO;
import kr.or.matsam.user.service.UserService;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.HandlerMapping;


import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class UserController {
    @Resource
    private UserService userService;

    //로그인
    @RequestMapping(value = "/user/login", method = RequestMethod.GET)
    String login() {
        return "user/login/login";
    }

    @RequestMapping(value = "/user/login", method = RequestMethod.POST)
    String info_loginReg(UserVO user, HttpServletRequest request) throws Exception {
        UserVO vo = userService.loginReg(user);

        if (vo == null) {
            return "user/login/login";
        }
        HttpSession session = request.getSession();
        UserAuth userAuth = new UserAuth();
        userAuth.setEmail(vo.getEmail());
        userAuth.setNickname(vo.getNickname());
        session.setAttribute("userAuth", userAuth);

        return "/home";
    }

    //회원가입 종류 (사장,개인)
    @RequestMapping(value = "/user/joinOwner", method = RequestMethod.GET)
    String joinType() {
        return "user/login/joinOwner";
    }

    //회원가입
    @RequestMapping(value = "/user/join", method = RequestMethod.GET)
    String join() {
        return "user/login/join";
    }

    @RequestMapping(value = "/user/join", method = RequestMethod.POST)
    String join(UserVO userVO) {
        userVO.setGrade_cd("일반");
        userService.join(userVO);
        return "user/login/login";
    }

    @RequestMapping(value = "/user/joinOwner", method = RequestMethod.POST)
    String joinOwner(UserVO userVO) {
        userVO.setGrade_cd("사장");
        userService.join(userVO);
        userService.joinOwner(userVO);
        return "redirect:/user/login/login";
    }

    // id 중복체크 메소드
    @RequestMapping("user/idCheck")
    @ResponseBody
    int idCheck(@RequestParam("email") String email) {
        return userService.idCheck(email);
    }

    // 닉네임 중복체크 메소드
    @RequestMapping("user/nicknameCheck")
    @ResponseBody
    int nicknameCheck(@RequestParam("nickname") String nickname) {
        return userService.nicknameCheck(nickname);
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/home";
    }

    //변경,삭제
    @RequestMapping(value = {"/user/modify", "/user/delete"})
    String modify(HttpServletRequest request, Model mm) {
        HttpSession session = request.getSession();
        UserAuth userAuth = (UserAuth) session.getAttribute("userAuth");
        UserVO userVO = userService.list(userAuth.getEmail());
        mm.addAttribute("userVO", userVO);
        String requestUri = request.getRequestURI();
        if (requestUri.equals("/user/modify")) {
            return "user/login/modify";
        } else {
            return "user/login/delete";
        }
    }

    @RequestMapping(value = "/user/modify", method = RequestMethod.POST)
    String modifyReg(UserVO userVO) {
        userService.modifyReg(userVO);
        return "/home";
    }

    @RequestMapping(value = "/user/delete", method = RequestMethod.POST)
    String deleteReg(UserVO userVO, HttpSession session) {
        userService.deleteReg(userVO);
        return logout(session);
    }

    @RequestMapping("/user/mypage")
    public String mypage() {
        System.out.println("호출");
        return "user/login/mypage";
    }

    @RequestMapping(value = "/user/idSearch", method = RequestMethod.GET)
    public String idSearch() {
        System.out.println("idSearch");
        return "user/login/idSearch";
    }

    @RequestMapping(value = "/user/idSearch", method = RequestMethod.POST)
    public String idSearchReg(UserVO userVO, Model mm) {
        UserVO data = userService.idSearchReg(userVO);
        mm.addAttribute("data", data);
        return "user/login/idSearchReg";
    }

    @RequestMapping("/user/passwordSearch")
    public String passwordSearch() {
        return "user/login/passwordSearch";
    }


    @RequestMapping("/sendSMS")
    @ResponseBody
    public String sendSMS(String phone) {
        System.out.println("passwordSearch");
        System.out.println(phone);
        System.out.println("sendSMS");
        Random random = new Random();
        String authNum = "";
        for (int i = 0; i < 4; i++) {
            String ran = Integer.toString(random.nextInt(10));
            authNum += ran;
        }

        System.out.println("수신자 번호 : " + phone);
        System.out.println("인증번호 : " + authNum);
        userService.sendSMS(phone, authNum);
        return authNum;
    }

    //여기부터
//			@RequestMapping("/user/sendSMS")
//			  public String sendSMS(HttpServletRequest request) throws Exception {
//				System.out.println("ㅎㅇㅎㅇ");
//
//				//userService.sendSMS(phone,authNum);
//
//				return "user/coolsms";
//			}
//
//			@GetMapping("/user/sendSMS")
//			@ResponseBody
//			public String sendSMS(String phone) {
//				System.out.println("sendSMS");
//		        Random random  = new Random();
//		        String authNum = "";
//		        for(int i=0; i<4; i++) {
//		            String ran = Integer.toString(random.nextInt(10));
//		            authNum+=ran;
//		        }
//
//		        System.out.println("수신자 번호 : " + phone);
//		        System.out.println("인증번호 : " + authNum);
//		        userService.sendSMS(phone,authNum);
//		        return authNum;
//		    }

}
