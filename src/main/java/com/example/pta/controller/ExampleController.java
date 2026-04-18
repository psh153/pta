package com.example.pta.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.pta.service.TestService;

@RequestMapping("/service")
@Controller
public class ExampleController {

    @Autowired
    private TestService testService;

    @RequestMapping("/list")
    public String tabulator(Model model){
    		return "program";
    }
    
    @RequestMapping("/main")
	public String main(Model model){
		return "program.main";
	}
	
	@RequestMapping("/detail")
	public String detail(Model model){
		return "program.detail";
	}
}
