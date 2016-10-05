package option.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Option_Controller {
	
	@RequestMapping("/option_main")
	public String option_MainView() {
		return "option_main";
	}

}
