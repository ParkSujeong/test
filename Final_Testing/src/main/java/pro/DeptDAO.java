package pro;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class DeptDAO extends SqlSessionDaoSupport {

	public Map<Integer, String> dept_Mapping(int com_num) {
		// com_dept_num, com_dept_name 매핑 (조직도)

		ArrayList ddto = (ArrayList) getSqlSession().selectList("dept.select", com_num);
		Map dept_map = new HashMap<Integer, String>();

		for (Object dept : ddto) {
			DeptDTO dto = (DeptDTO) dept;
			dept_map.put(dto.getCom_dept_num(), dto.getCom_dept_name());

		}

		return dept_map;
	}

	public String com_CEO(int com_num) {
		// 회사대표 이름
		
		String ceo = getSqlSession().selectOne("dept.ceoName", com_num);

		return ceo;
	}

	public List dept_List(int com_num, int com_dept_num) {
		// 부서 내 사원 리스트

		Map map= new HashMap<>();
		map.put("com_num", com_num);
		map.put("com_dept_num", com_dept_num);
		ArrayList mem_List = (ArrayList) getSqlSession().selectList("dept.memList", map);
		
		return mem_List;
	}

}
