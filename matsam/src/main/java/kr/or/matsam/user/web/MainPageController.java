package kr.or.matsam.user.web;

import com.resjoin.entity.ResjoinVO;
import com.user.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class MainPageController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping(value="/main/main", method= RequestMethod.GET)
	  public String main() {

	  return "main/main"; 
		    }
	  
	  @RequestMapping(value="/main/main", method= RequestMethod.POST)
	  public String resSearch(String keyword, Model mm) {
		  System.out.println(keyword);
		  List<ResjoinVO> resVO = userService.resSearch(keyword);
		  System.out.println(resVO);
		  mm.addAttribute("resList",resVO);
	  return "main/main"; 
		    }
}
