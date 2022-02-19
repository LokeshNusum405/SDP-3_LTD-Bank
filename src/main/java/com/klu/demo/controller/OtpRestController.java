package com.klu.demo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klu.demo.model.SmsRequest;
import com.klu.demo.service.SmsService;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/v1/sms")
public class OtpRestController {

    private final SmsService smsService;

    @Autowired
    public OtpRestController(SmsService smsService) {
        this.smsService = smsService;
    }

    @PostMapping
    public void sendSms(@Valid @RequestBody SmsRequest smsRequest) {
        smsService.sendSms(smsRequest);
    }    
   
}
