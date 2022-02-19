package com.klu.demo.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klu.demo.model.LoanOfficer;
import com.klu.demo.model.SmsRequest;
import com.klu.demo.service.LoanOfficerService;
import com.klu.demo.service.SmsService;

@Controller
@CrossOrigin("*")
@RequestMapping("/sms")
public class OtpController {

    private final SmsService smsService;
    private final LoanOfficerService loservice;
    @Autowired
    public OtpController(SmsService smsService,LoanOfficerService loservice) {
        this.smsService = smsService;
        this.loservice = loservice;
    }

    @GetMapping("/login")
    public ModelAndView login() 
    {
    	ModelAndView mv = new ModelAndView("smsRequest","smsRequest",new SmsRequest());
    	mv.setViewName("/bankmanager/login");
    	return mv;
    }
    
    @PostMapping("/phoneNumber")
    public ModelAndView sendOtp(@ModelAttribute("smsRequest")SmsRequest smsRequest)
    {
    	ModelAndView mv = new ModelAndView();
    	if(smsRequest.getPhoneNumber().equals("7995937945")) 
    	{
    		
    		String otp = smsService.sendSms(smsRequest);
    		mv.setViewName("/bankmanager/check_otp");
    		mv.addObject("smsRequest",smsRequest);
    		mv.addObject("otp",otp);  
    	}
    	else {
    		String bm_errmsg="Invalid Login Credentials";
    		mv.setViewName("/mainhome");
    		mv.addObject("bm_errmsg",bm_errmsg);
    	}
    	return mv;
    }
    
    @PostMapping("/verifyOTP")
    public ModelAndView verifyOTP(@RequestParam("otp")String otp, @RequestParam("user_otp")String user_otp,@RequestParam("phoneNumber")String phoneNumber,HttpSession session) 
    {
    	System.out.println(otp + " "+user_otp);
    	ModelAndView mv;
    	if(otp.equals(user_otp)) {    	
    		session.setAttribute("phoneNumber", phoneNumber);
    		
    		mv = new ModelAndView("redirect:/bmhome");
    	}
    	else {
    		mv = new ModelAndView();
        	mv.setViewName("/bankmanager/invalid_otp");
        	mv.addObject("otp",otp);
        	mv.addObject("phoneNumber",phoneNumber);
    	}
    	return mv;
    }
    
    @PostMapping("/resendOTP")
    public ModelAndView resendOTP(@RequestParam("phoneNumber")String phoneNumber)
    {
    	
    	SmsRequest smsRequest = new SmsRequest();
    	smsRequest.setPhoneNumber(phoneNumber);
    	String otp = smsService.sendSms(smsRequest);
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("/bankmanager/check_otp");
    	mv.addObject("smsRequest",smsRequest);
    	mv.addObject("otp",otp);
    	return mv;
    }
    
    
}
