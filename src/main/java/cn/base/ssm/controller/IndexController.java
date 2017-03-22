package cn.base.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.base.ssm.po.User;
import cn.base.ssm.service.UserService;

@Controller
public class IndexController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/index")
	public String showIndex(Integer id,Model model) {
		User user = userService.getUserById(id);
		model.addAttribute("user", user);
		return "index";
	}

}
