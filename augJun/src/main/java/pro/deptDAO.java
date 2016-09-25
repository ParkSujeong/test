package pro;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class deptDAO extends SqlSessionDaoSupport {
	
	public void dept_Name_List(deptDTO dept) {
		getSqlSession().selectList("dept.select", dept);
	}

}
