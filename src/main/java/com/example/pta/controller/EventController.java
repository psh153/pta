package com.example.pta.controller;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.pta.service.EventService;

@RestController
@RequestMapping("/common/event")
public class EventController {

    private final EventService eventService;

    public EventController(EventService eventService) {
        this.eventService = eventService;
    }

    @SuppressWarnings("unchecked")
	@PostMapping("/select")
    public Object getSelectList(@RequestBody Map<String, Object> parameter) {
    		String sqlId = (String)parameter.get("sqlId");
    		Map<String, Object> map = (Map<String, Object>) parameter.get("parameter");
    		
        return eventService.getSelectList(sqlId, map);
    }

    @PostMapping("/call")
    public Object callEvent(@RequestParam String sqlId, @RequestParam Map<String, Object> parameter) {
        return eventService.callEvent(sqlId, parameter);
    }

    @PostMapping("/batch")
    public Object batchEvent(@RequestParam String sqlId, @RequestParam List<Map<String, Object>> parameters) {
        return eventService.batchEvent(sqlId, parameters);
    }
}
