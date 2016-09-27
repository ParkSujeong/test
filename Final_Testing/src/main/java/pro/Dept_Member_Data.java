package pro;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Dept_Member_Data {
	
	private DeptDAO dao;

	public void setDao(DeptDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/mem_resume.do")
	public String mem_Data() {
		
		return "dept_mem_resume";
	}

}
