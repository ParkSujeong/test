package pro;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Dept_Controller {

	private DeptDAO dao;

	public void setDao(DeptDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/chart.do")
	public String dept_Main_View() {

		return "organization_chart";
	}

	@ModelAttribute("dept")
	public Map<Integer, String> dept_Name(Model model, HttpSession session) {
		// com_dept_num , com_dept_name을 매핑

		// 임의세션 설정
		model.addAttribute("com_num", 1001);
		model.addAttribute("com_name", "naver");
		session.setAttribute("com_num", 1001);
		session.setAttribute("com_name", "naver");

		int com_num = (int) session.getAttribute("com_num");
		Map<Integer, String> dept_map = dao.dept_Mapping(com_num);

		return dept_map;
	}

	@ModelAttribute("ceo_name")
	public String com_CEOName(HttpSession session) {

		int com_num = (int) session.getAttribute("com_num");
		String ceo_name = dao.com_CEO(com_num);

		return ceo_name;

	}

}
