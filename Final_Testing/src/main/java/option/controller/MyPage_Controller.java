package option.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import option.db.MyPageDAO;

@Controller
public class MyPage_Controller {
	
	private MyPageDAO dao;
	
	public void setDao(MyPageDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/mypage")
	public String myPage_View() {
		
		return "/mypage/option_mypage";
	}
	
	@RequestMapping("/passwd_ch_view")
	public String passwd_View() {

		return "/mypage/modify_passwd_confirm";
	}
	
	@RequestMapping("/passwd_ch")
	public void passwd_Change(HttpSession session, @RequestParam("newpw1") String passwd) {
		
		int mem_num = (int) session.getAttribute("mem_num");
		System.out.println("mem_num:::" + mem_num + "  passwd:::" + passwd);
		dao.passwd_Change(mem_num, passwd);
	}
	
	@RequestMapping("/profile_img_up")
	public void profile_Img_Upload() {
		
		
	}

}
