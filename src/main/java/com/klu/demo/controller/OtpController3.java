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

import com.klu.demo.model.Customer;
import com.klu.demo.model.SmsRequest;
import com.klu.demo.service.CustomerService;
import com.klu.demo.service.SmsService;

@Controller
@CrossOrigin("*")
@RequestMapping("/sms3")
public class OtpController3 {

    private final SmsService smsService;
    private final CustomerService cuservice;

    @Autowired
    public OtpController3(SmsService smsService, CustomerService cuservice) {
        this.smsService = smsService;
        this.cuservice = cuservice;
    }

    
    
    
    @GetMapping("/culogin")
    public ModelAndView login() 
    {
    	ModelAndView mv = new ModelAndView("smsRequest","smsRequest",new SmsRequest());
    	mv.setViewName("/customer/cu_login");
    	return mv;
    }
    
    @PostMapping("/phoneNumber")
    public ModelAndView sendOtp(@ModelAttribute("smsRequest")SmsRequest smsRequest)
    {
    	ModelAndView mv = new ModelAndView();
    	if(cuservice.validateCustomerByPhoneNumber(smsRequest.getPhoneNumber())) {
    		String otp = smsService.sendSms(smsRequest);
    		mv.setViewName("/customer/check_otp");
    		mv.addObject("smsRequest",smsRequest);
    		mv.addObject("otp",otp);    		
    	}
    	else {
    		mv.setViewName("/customer/cu_login");
    		String cu_errmsg="Not a registered Customer. Please Contact Loan Officer.";
    		mv.addObject("cu_errmsg",cu_errmsg);
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
    		Customer cu = cuservice.getCustomerByPhoneNumber(phoneNumber);
    		session.setAttribute("accno", cu.getAccountNumber());
    		session.setAttribute("name", cu.getCustomerName());
    		cu.setRecentlogin(st);
    		cu.setNologins(cu.getNologins()+1);
    		cu.setActivestatus(1);
    		cuservice.updatecustomer(cu);
    		mv = new ModelAndView("redirect:/cuhome");
    	}
    	else {
    		mv = new ModelAndView();
        	mv.setViewName("/customer/invalid_otp");
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
    	mv.setViewName("/customer/check_otp");
    	mv.addObject("smsRequest",smsRequest);
    	mv.addObject("otp",otp);
    	return mv;
    }
    
}
