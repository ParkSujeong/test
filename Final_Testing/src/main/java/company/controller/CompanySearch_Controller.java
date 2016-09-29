package company.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import company.db.CompanyDAO;

@Controller
public class CompanySearch_Controller {

	private CompanyDAO dao;

	public void setDao(CompanyDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/com_searchForm.do")
	public String search_View() {
		return "companyCheck";
	}

	@RequestMapping("/com_search.do")
	public List search_Com() {

		List search_list = new ArrayList<>();
		
		
		
		return search_list;

	}

}
