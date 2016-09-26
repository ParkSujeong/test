package pro;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Final_Test {
	
	private DeptDAO dao;
	
	
	public void setDao(DeptDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/final_test/chart.do")
	public String testView() {
		return "dept_chart/organization_chart";
	}
	
	@ModelAttribute("dept")
	public Map<Integer, String> dept_name() {
		/*Map<Integer, String> dept_map = new HashMap<Integer, String>();*/

		Map<Integer, String> dept_map = dao.dept_Mapping();
	

/*		
 		dept_map.put(1, "dept1");
		dept_map.put(2, "dept2");
		dept_map.put(3, "dept3");
		dept_map.put(4, "dept4");
		dept_map.put(5, "dept5");
		dept_map.put(6, "dept6");
		dept_map.put(7, "dept7");
		dept_map.put(8, "dept8");
		dept_map.put(9, "dept9");
		dept_map.put(10, "dept10");
		dept_map.put(11, "dept11");
		dept_map.put(12, "dept12");
		dept_map.put(13, "dept13");
		dept_map.put(14, "dept14");
*/
		
		return dept_map;
		
	}

}
