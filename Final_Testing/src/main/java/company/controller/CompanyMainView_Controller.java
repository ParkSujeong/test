package company.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import company.db.CompanyDAO;

@Controller
public class CompanyMainView_Controller {

	private CompanyDAO dao;

	public void setDao(CompanyDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/companyForm.do")
	public String mainView() {
		return "mainForm";
	}

	@ModelAttribute("aff_list")
	public List<String> affList() {

		List<String> aff_list = new ArrayList<String>();

		aff_list.add("IT");
		aff_list.add("Design");
		aff_list.add("Logistics");
		aff_list.add("Fashion");
		aff_list.add("Food");
		aff_list.add("Accountant");
		aff_list.add("Cosmetics");
		aff_list.add("etc");

		return aff_list;

	}

	@ModelAttribute("dept_map")
	public Map<Integer, String> deptMap() {

		Map<Integer, String> dept_map = new HashMap<Integer, String>();
		
		dept_map.put(1, "비서팀");
		dept_map.put(2, "관리1팀");
		dept_map.put(3, "관리2팀");
		dept_map.put(4, "관리3팀");
		dept_map.put(5, "경영1팀");
		dept_map.put(6, "경영2팀");
		dept_map.put(7, "경영3팀");
		dept_map.put(8, "제품1팀");
		dept_map.put(9, "제품2팀");
		dept_map.put(10, "기술1팀");
		dept_map.put(11, "기술2팀");
		dept_map.put(12, "영업1팀");
		dept_map.put(13, "영업2팀");
		dept_map.put(14, "영업3팀");

		return dept_map;
	}

	@ModelAttribute("pos_map")
	public Map<Integer, String> posMap() {

		Map<Integer, String> pos_map = new HashMap<Integer, String>();

		pos_map.put(2, "과장");
		pos_map.put(3, "부장");
		pos_map.put(4, "팀장");
		pos_map.put(5, "대리");
		pos_map.put(6, "사원");

		return pos_map;

	}

}
