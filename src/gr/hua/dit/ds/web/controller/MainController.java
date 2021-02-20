package gr.hua.dit.ds.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String index() {
		return "redirect:/home";
	}

	@GetMapping("/home")
	public String home() {
		return "Home";
	}
	
	@GetMapping("/home/**")
	public String redirect() {
		return "redirect:/home";
	}

	@GetMapping("/login")
	public String showLogin() {
		return "login";
	}
}
