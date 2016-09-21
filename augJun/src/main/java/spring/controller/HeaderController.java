package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeaderController {

	@RequestMapping("/header/check.do")
	public String check
	(			@RequestHeader(value="Accept") String accept,
			@RequestHeader(value="Accept-Language") String acceptLanguage,
			@RequestHeader(value="User-Agent", defaultValue="myBrowser") String userAgent,
			@RequestHeader(value="Host") String host       		) {
		
		
	    System.out.println("Accept: " + accept);
        System.out.println("Accept-Language: " + acceptLanguage);
        System.out.println("User-Agent: " + userAgent);
        System.out.println("Host: " + host);
		return "header/pass";
	}
}
