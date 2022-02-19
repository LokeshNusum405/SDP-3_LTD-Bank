package com.klu.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.klu.demo.model.SmsRequest;
import com.klu.demo.repository.TwilioSms;

@org.springframework.stereotype.Service
public class SmsService {
    private final TwilioSms twilioSmsService;

    @Autowired
    public SmsService(@Qualifier("twilio") TwilioSmsService twilioSmsService) {
        this.twilioSmsService = twilioSmsService;
    }

    public String sendSms(SmsRequest smsRequest) 
    {
    	return twilioSmsService.sendSms(smsRequest);
    }
    
    
}
