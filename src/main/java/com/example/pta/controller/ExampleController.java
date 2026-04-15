package com.example.pta.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.pta.service.TestService;

@Controller
public class ExampleController {

    @Autowired
    private TestService testService;

    @RequestMapping("/main")
    public String ExampleMain(Model model){
        model.addAttribute("test", testService.dbCheck());
        return "main";
    }
    
    @RequestMapping("/main2")
    public String ExampleMain2(Model model){
    	model.addAttribute("test", testService.dbCheck());
    	return "main2";
    }
    @RequestMapping("/list")
    public String tabulator(Model model){
    	
    	return "tabulator";
    }
}
