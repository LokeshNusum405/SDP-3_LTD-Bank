package com.klu.demo.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
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
@RequestMapping("/sms2")
public class OtpController2 {

    private final SmsService smsService;
    private final LoanOfficerService loservice;

    @Autowired
    public OtpController2(SmsService smsService, LoanOfficerService loservice) {
        this.smsService = smsService;
        this.loservice = loservice;
    }

    
    
    
    
    
    @PostMapping("/phoneNumber")
    public ModelAndView sendOtp(@ModelAttribute("smsRequest")SmsRequest smsRequest)
    {
    	ModelAndView mv = new ModelAndView();
    	if(loservice.validateLoanOfficerByPhoneNumber(smsRequest.getPhoneNumber())) {
    		String otp = smsService.sendSms(smsRequest);
    		mv.setViewName("/loanofficer/check_otp");
    		mv.addObject("smsRequest",smsRequest);
    		mv.addObject("otp",otp);    		
    	}
    	else {
    		mv.setViewName("/loanofficer/lo_login");
    		String lo_errmsg="Not a registered loan officer. Please try again.";
    		mv.addObject("lo_errmsg",lo_errmsg);
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
    		Timestamp ts=new Timestamp(System.currentTimeMillis());
    		String st = ts.toString();
    		LoanOfficer lo = loservice.getLoanOfficerByPhoneNumber(phoneNumber);
    		session.setAttribute("loname", lo.getOfficername());
    		System.out.println(lo);
    		lo.setRecentlogin(st);
    		lo.setNologins(lo.getNologins()+1);
    		lo.setActivestatus(1);
    		loservice.updateloanofficer(lo);
    		mv = new ModelAndView("redirect:/lohome");
    	}
    	else {
    		mv = new ModelAndView();
        	mv.setViewName("/loanofficer/invalid_otp");
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
    	mv.setViewName("/loanofficer/check_otp");
    	mv.addObject("smsRequest",smsRequest);
    	mv.addObject("otp",otp);
    	return mv;
    }
    
}
