package spring.mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class FileDAO extends SqlSessionDaoSupport{


	
	
	public void insertMem(SpringFile file){
		getSqlSession().insert("file.insert", file);
	}
	
	
	
}
