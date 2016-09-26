package pro;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;



public class DeptDAO extends SqlSessionDaoSupport {

	public Map<Integer, String> dept_Mapping() {
		
		ArrayList ddto =  (ArrayList) getSqlSession().selectList("dept.select");
		Map dept_map = new HashMap<Integer, String>();
		
		for(Object dept : ddto ){
			DeptDTO dto = (DeptDTO) dept;
			dept_map.put(dto.getDept_num(), dto.getDept_name());
			
			
		}
		
		System.out.println("dept_map ::: " + dept_map.toString());
		
		return dept_map;
	}

}
