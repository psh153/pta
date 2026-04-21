package com.example.pta.repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CommonDao {
	
    private SqlSessionTemplate sqlSession;

	public CommonDao(SqlSessionTemplate sqlSession) {
        this.sqlSession = sqlSession;
    }
	
	public Map<String, Object> selectOne(String sqlId, Object parameter) {
		return sqlSession.selectOne(sqlId, parameter);
	}
	
    public List<Map<String, Object>> selectList(String sqlId, Object parameter) {
        return sqlSession.selectList(sqlId, parameter);
    }
    
    public int updateEvent(String sqlId, Object parameter) {
    		return sqlSession.update(sqlId, parameter);
    }
}
