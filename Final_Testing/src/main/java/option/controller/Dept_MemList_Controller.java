package pro;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/dept_memList.do")
public class Dept_MemList {
	
	private DeptDAO dao;
	
	
	public void setDao(DeptDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String dept_ListView() {
		
		
		return "dept_mem_list";
	}

	@ModelAttribute("dept_List")
	public List dept_ListSQL(@RequestParam("com_dept_num") int com_dept_num, HttpSession session) {
		
		int com_num = (int) session.getAttribute("com_num");
		List mem_List = new ArrayList<>();
		mem_List = dao.dept_List(com_num, com_dept_num);
		
		for (int i = 0; i < mem_List.size(); i++) {
			System.out.println("mem_List ::: " + mem_List.get(i));
		}
		
		return mem_List;
	}

}