package com.klu.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.demo.model.SmsRequest;

@Controller
public class MainHomeController 
{
	@GetMapping("/mainhome")
    public ModelAndView mainhome() 
    {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("mainhome");
    	return mv;
    }
	
	@GetMapping("/aboutus")
    public ModelAndView aboutus() 
    {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("aboutus");
    	return mv;
    }
	
	@GetMapping("/team")
    public ModelAndView team() 
    {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("team");
    	return mv;
    }
	
	@GetMapping("/")
	public String gotomainhome()
	{
		return "redirect:/mainhome";
		
	}
	
}
