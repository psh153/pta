package com.example.pta.controller;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.pta.service.EventService;

@SuppressWarnings("unchecked")
@RestController
@RequestMapping("/common/event")
public class EventController {

    private final EventService eventService;

    public EventController(EventService eventService) {
        this.eventService = eventService;
    }

	@PostMapping("/select")
    public Object getSelectList(@RequestBody Map<String, Object> parameter) {
    		String sqlId = (String)parameter.get("sqlId");
    		Map<String, Object> map = (Map<String, Object>) parameter.get("parameter");
    		
        return eventService.getSelectList(sqlId, map);
    }

    @PostMapping("/call")
    public Object callEvent(@RequestBody Map<String, Object> parameter) {
    		String sqlId = (String)parameter.get("sqlId");
		Map<String, Object> map = (Map<String, Object>) parameter.get("parameter");
		
        return eventService.callEvent(sqlId, map);
    }

    @PostMapping("/batch")
    public Object batchEvent(@RequestParam List<Map<String, Object>> parameters) {
    		String sqlId = (String)parameters.get(0).get("sqlId");
//		Map<String, Object> map = (Map<String, Object>) parameters.get("parameter");
        return eventService.batchEvent(sqlId, parameters);
    }
}
