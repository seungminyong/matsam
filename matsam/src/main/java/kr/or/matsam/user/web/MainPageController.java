package kr.or.matsam.user.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.matsam.manage.entity.ManageVO;
import kr.or.matsam.user.service.UserService;


@Controller
public class MainPageController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping(value="/main/main", method=RequestMethod.GET)
	  public String main() {

	  return "main/main"; 
		    }
	  
	  @RequestMapping(value="/main/main", method=RequestMethod.POST)
	  public String resSearch(String keyword,Model mm) {
		  System.out.println(keyword);
		  List<ManageVO> resVO = userService.resSearch(keyword);
		  System.out.println(resVO);
		  mm.addAttribute("resList",resVO);
	  return "main/main"; 
		    }
}
