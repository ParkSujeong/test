package pro;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public Map<Integer, String> dept_Name(HttpSession session) {
		// com_dept_num , com_dept_name을 매핑

		int com_num = (int) session.getAttribute("com_num");
		Map<Integer, String> dept_map = dao.dept_Mapping(com_num);

		return dept_map;
	}
	
/*	
	@ModelAttribute
	public static Model sessionSetting(Model model, HttpSession session) {
		// session 임의 등록
		
		model.addAttribute("com_num", 100);
		model.addAttribute("com_name", "naver");
		session.setAttribute("com_num", 100);
		session.setAttribute("com_name", "naver");
		
		return model;
	}
	
	*/

	@ModelAttribute("ceo_name")
	public String com_CEOName(HttpSession session) {

		int com_num = (int) session.getAttribute("com_num");
		String ceo_name = dao.com_CEO(com_num);

		return ceo_name;

	}

}
