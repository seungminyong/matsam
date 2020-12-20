package kr.or.matsam.user.web;

import com.user.entity.UserAuth;
import com.user.entity.UserVO;
import com.user.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Random;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	
	//로그인
		@RequestMapping(value = "user/login")
        String login() {
			return "user/login";
		}

		@PostMapping(value = "user/login")
        String info_loginReg(UserVO user, HttpServletRequest request) throws Exception {
			UserVO vo = userService.loginReg(user);			
			
			if(vo == null) {
				return "user/login";			
			}
			HttpSession session = request.getSession();
			UserAuth userAuth = new UserAuth();
			userAuth.setUserEmail(vo.getUserEmail());
			userAuth.setUserNicName(vo.getUserNicName());
			session.setAttribute("userAuth", userAuth);
		
			return "/home";
		}
		
		//로그아웃
		@RequestMapping("/logout")
		public String logout(HttpSession session) {
		session.invalidate(); 
		return "redirect:/home"; 
	    }		
		
		@RequestMapping("user/joinKind")
        String joinKind() {
			return "user/joinKind";
		}
					
		//회원가입 (개인)
		@RequestMapping("/user/join")
        String join() {
			return "user/join";
		}
		
		@PostMapping("/user/join")
        String join(UserVO userVO) {
			userVO.setUserGradeCd("일반");
			userService.join(userVO);
			return "redirect:/user/login";
		}
		
		//회원가입 (사장)
		@RequestMapping("/user/joinOwner")
        String joinOwner() {
			return "user/joinOwner";
		}
		
		@PostMapping(value = "/user/joinOwner")
        String joinOwner(UserVO userVO) {
			userVO.setUserGradeCd("사장");
			userService.join(userVO);
			userService.joinOwner(userVO);
			return "redirect:/user/login";
		}
	
		
		// id 중복체크 ajax
		@RequestMapping("user/idCheck")
		@ResponseBody
		int idCheck(String userEmail) {
			return userService.idCheck(userEmail);
		}
		  
		 // 닉네임 중복체크 ajax
		  @RequestMapping("user/nicknameCheck")
		  @ResponseBody
		  int nicknameCheck(String userNicName) {
				return userService.nicknameCheck(userNicName);
			}
		  		
		  //변경,삭제
		  @RequestMapping(value = {"/user/modify","/user/delete"})
          String modify(HttpServletRequest request, Model mm) {
			  
			  HttpSession session = request.getSession();
			  
			  UserAuth userAuth = (UserAuth)session.getAttribute("userAuth");
			  UserVO userVO = userService.list(userAuth.getUserEmail());
			  
			  mm.addAttribute("userVO", userVO);
			  
			  String requestUri = request.getRequestURI();
			  
			  if(requestUri.equals("/user/modify")) { 
				  return "user/modify";
			  }else {
				  return "user/delete";
			  }
		  }
		  
		  @PostMapping("/user/modify")
          String modifyReg(UserVO userVO) {
			  userService.modifyReg(userVO);
			  return "/home";
		  }
		  
		  @PostMapping("/user/delete")
          String deleteReg(UserVO userVO, HttpSession session) {
			  userService.deleteReg(userVO);			  
			  return logout(session);
		  }
		  
		  //아이디 찾기
		  @RequestMapping("/user/idSearch")
		  public String idSearch() {
			  System.out.println("idSearch");
		  return "user/idSearch"; 
			    }
		  
		  //아이디 찾기(중복되면 에러남, db에서 한개의 값만가져오므로)
		  @PostMapping("/user/idSearch")
		  public String idSearchReg(UserVO userVO, Model mm) {
			  UserVO data = userService.idSearchReg(userVO);
			  mm.addAttribute("data", data);
		  return "user/idSearchReg"; 
			    }
		  
		  //비밀번호 찾기
		  @RequestMapping("/user/passwordSearch")
		  public String passwordSearch() {
			  return "user/passwordSearch";
		  }
		  
		  @PostMapping("/user/passwordSearch")
		  public String passwordSearchReg(UserVO userVO, Model mm) {
			  
			  UserVO data = userService.passwordSearchReg(userVO);
			  
			  mm.addAttribute("data",data);
			  
			  return "user/passwordSearchReg";
		  }
		  
		  //핸드폰 본인인증
		  @RequestMapping("user/sendSMS")
		  @ResponseBody
		  public String sendSMS(String userPhone) {
		        Random random  = new Random();
		        String authNum = "";
		        for(int i=0; i<4; i++) {
		            String ran = Integer.toString(random.nextInt(10));
		            authNum+=ran;
		        }

		        System.out.println("수신자 번호 : " + userPhone);
		        System.out.println("인증번호 : " + authNum);
		        userService.sendSMS(userPhone,authNum);
		        return authNum;
			    }
		  
			
			//휴대폰 인증
			@RequestMapping("/user/phoneAuth")
            String phoneAuth() {
				return "user/phoneAuth";
			}
			
			@PostMapping("/user/phoneAuth")
            String phoneAuthReg() {
				return "user/sneSMS";
			}
			

		  //여기부터
//			@RequestMapping("/user/sendSMS")
//			  public String sendSMS(HttpServletRequest request) throws Exception {
//				System.out.println("ㅎㅇㅎㅇ");
//				
//				//userService.sendSMS(userPhone,authNum);
//
//				return "user/coolsms";
//			}
//			
//			@GetMapping("/user/sendSMS")
//			@ResponseBody
//			public String sendSMS(String userPhone) {
//				System.out.println("sendSMS");
//		        Random random  = new Random();
//		        String authNum = "";
//		        for(int i=0; i<4; i++) {
//		            String ran = Integer.toString(random.nextInt(10));
//		            authNum+=ran;
//		        }
//
//		        System.out.println("수신자 번호 : " + userPhone);
//		        System.out.println("인증번호 : " + authNum);
//		        userService.sendSMS(userPhone,authNum);
//		        return authNum;
//		    }
		  
}
