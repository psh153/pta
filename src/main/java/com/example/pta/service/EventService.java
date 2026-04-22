package com.example.pta.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.pta.repository.CommonDao;

@Service
public class EventService {
	 private final CommonDao commonDao;

	 public EventService(CommonDao commonDao) {
		 this.commonDao = commonDao;
	 }

	 // 단건 조회
	 public Object selectOne(String sqlId, Map<String, Object> parameter) {
		 return commonDao.selectOne(sqlId, parameter); 
	 }
	 
	 // 다건 조회
	 public Object getSelectList(String sqlId, Map<String, Object> parameter) {
		 Map<String, Object> result = new HashMap<>();
		 List<Map<String,Object>> list = commonDao.selectList(sqlId, parameter);
		 
		 result.put("result", list);
		 result.put("total", list.size());
		 
		 return list; 
	 }
	 
	 // 단건 수정, 삭제
	 public Object callEvent(String sqlId, Map<String, Object> parameter) {
		 Map<String, Object> result = new HashMap<>();
		 
		 commonDao.updateEvent(sqlId, parameter);
		 
		 String msg = (String) parameter.get("out1");

		 result.put("result", msg);
		 
		 return result; 
	 }
	 
	 // 다건 수정,삭제
	 @Transactional
	 public Object batchEvent(String sqlId, List<Map<String, Object>> parameters) {
		 Map<String, Object> result = new HashMap<>();
		 
		 for (Map<String, Object> parameter : parameters) {
			 commonDao.updateEvent(sqlId, parameter);
		 }
		 
		 result.put("result", "OK");
		 
		 return result; 
	 }
}
