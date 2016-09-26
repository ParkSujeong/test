package pro;

import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class DeptDAO extends SqlSessionDaoSupport {

	public Map dept_Mapping(DeptDTO dept) {
		Map dept_map = getSqlSession().selectMap("dept.select", dept, "dept_num");

		return dept_map;
	}

}
