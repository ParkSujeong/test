package company.controller;

import static org.hamcrest.CoreMatchers.instanceOf;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import company.db.CompanyDAO;
import company.db.MembersDTO;
import company.db.TempComDTO;

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
		dept_map.put(2, "인사팀");
		dept_map.put(3, "총무팀");
		dept_map.put(4, "경리팀");
		dept_map.put(5, "재경팀");
		dept_map.put(6, "기획팀");
		dept_map.put(7, "감사팀");
		dept_map.put(8, "물류팀");
		dept_map.put(9, "제조/생산팀");
		dept_map.put(10, "개발팀");
		dept_map.put(11, "디자인팀");
		dept_map.put(12, "고객관리팀");
		dept_map.put(13, "광고팀");
		dept_map.put(14, "해외영업팀");

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

	@RequestMapping(value = "/temp_com.do", method = RequestMethod.POST)
	public String temp_Com_Submit(@ModelAttribute TempComDTO temp, HttpSession request) {
		// 사업장 등록 submit
		
		temp.setCom_phone(temp.getCom_phone1() + temp.getCom_phone2() + temp.getCom_phone3());
		int x = dao.temp_Insert(temp);
		System.out.println("x::::" + x);
		int mem_num = Integer.parseInt((String) request.getAttribute("mem_num"));
		String com_name = temp.getCom_name();
		System.out.println("mem_num:::" + mem_num);
		System.out.println("1");
		int y = dao.temp_ceo_Update(com_name, mem_num);

		return "company_Temp_Join";

	}
	
	@RequestMapping(value = "/mem_com_update.do" , method = RequestMethod.POST)
	public String mem_Comapny_Submit(@ModelAttribute MembersDTO mem) {
		
		System.out.println(mem.toString());
		
		
		return "company_Temp_Join";
	}

}
