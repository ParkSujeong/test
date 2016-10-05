package option.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	@RequestMapping(value = "/passwd_ch_view", method = RequestMethod.GET)
	public String passwd_View() {

		return "/mypage/modify_passwd_confirm";
	}

	@RequestMapping(value = "/passwd_ch_view", method = RequestMethod.POST)
	public String passwd_Change(HttpSession session, @RequestParam("newpw1") String passwd) {

		int mem_num = (int) session.getAttribute("mem_num");
		System.out.println("mem_num:::" + mem_num + "  passwd:::" + passwd);
		dao.passwd_Change(mem_num, passwd);

		return "/mypage/option_mypage";
	}

	@RequestMapping("/profile_img_up")
	public void profile_Img_Upload(HttpServletRequest request, HttpSession session) {

		
		
	}

	@RequestMapping("/my_resume")
	public String my_Resume() {

		return "/mypage/resume_change";
	}

	@RequestMapping("/account_drop")
	public String account_Drop() {

		return "/mypage/user_delete";
	}

}
