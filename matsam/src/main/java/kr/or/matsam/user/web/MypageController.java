package kr.or.matsam.user.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.matsam.user.entity.UserAuth;
import kr.or.matsam.user.entity.UserVO;
import kr.or.matsam.user.service.UserService;


@Controller
public class MypageController {

	@Resource
	private UserService userService;
	
	  @RequestMapping("/mypage/mypage")
	  public String mypage() {
		  
	  return "mypage/mypage"; 
		    }
	  
	  //변경,삭제
	  @RequestMapping("/mypage/{service}")
	  String userModify(@PathVariable("service") String service, HttpServletRequest request,Model mm) {
		  HttpSession session = request.getSession();
		  
		  UserAuth userAuth = (UserAuth)session.getAttribute("userAuth");
		  UserVO userVO = userService.list(userAuth.getEmail());
		  
		  mm.addAttribute("userVO", userVO);
		  
		  return "mypage/" + service;
	  }
	  
		//비밀번호 변경
		@RequestMapping("/mypage/passwordModify")
		String passwordModify() {
			return "mypage/passwordModify";
		}
		
		@PostMapping("/mypage/passwordModify")
		void passwordModify(HttpServletRequest request,UserVO userVO) {
			System.out.println("성공");
			HttpSession session = request.getSession();
			UserAuth userAuth = (UserAuth)session.getAttribute("userAuth");
			userVO.setEmail(userAuth.getEmail());
			System.out.println(userAuth);
			userService.passwordModify(userVO);
		}
		
		//닉네임 변경 ajax
		@RequestMapping("/mypage/nicknameModify")
		String nicknameModify() {
			return "mypage/nicknameModify";
		}
		
		@RequestMapping("/mypage/nicknameModifyCheck")
		@ResponseBody
			int nicknameModify(String nickname) {
			return userService.nicknameModify(nickname);
		}
		
		@PostMapping("/mypage/nicknameModify")
		void nicknameModifyReg(HttpServletRequest request,String nickname) {
			HttpSession session = request.getSession();
			UserAuth userAuth = (UserAuth)session.getAttribute("userAuth");
			userAuth.setNickname(nickname);
			System.out.println(nickname);
			userService.nicknameModifyReg(userAuth);
		}	  
}