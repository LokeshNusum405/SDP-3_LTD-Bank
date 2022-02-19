package com.klu.demo.service;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.demo.config.TwilioConfiguration;
import com.klu.demo.model.SmsRequest;
import com.klu.demo.repository.TwilioSms;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.rest.api.v2010.account.MessageCreator;
import com.twilio.type.PhoneNumber;

@Service("twilio")
public class TwilioSmsService implements TwilioSms {

    @SuppressWarnings("unused")
	private static final Logger LOGGER = LoggerFactory.getLogger(TwilioSmsService.class);

    @SuppressWarnings("unused")
	private final TwilioConfiguration twilioConfiguration;

    @Autowired
    public TwilioSmsService(TwilioConfiguration twilioConfiguration) {
        this.twilioConfiguration = twilioConfiguration;
    }

    @Override
    public String sendSms(SmsRequest smsRequest) 
    {
    	String ph="+91"+smsRequest.getPhoneNumber();
    	String tph="+15392245965";
    	String otp=getRandomNumberString();
    	
        if (isPhoneNumberValid(ph)) 
        {
            PhoneNumber to = new PhoneNumber(ph);
            PhoneNumber from = new PhoneNumber(tph);
            String message= smsRequest.getMessage()+otp;
            MessageCreator creator = Message.creator(to, from, message);
            creator.create();
            //LOGGER.info("Send sms {}", smsRequest);
            
        } 
        else 
        {
            throw new IllegalArgumentException(
                    "Phone number [" + ph + "] is not a valid number"
            );
        }
        return otp;
    }

    private boolean isPhoneNumberValid(String phoneNumber) 
    {
        // TODO: Implement phone number validator
    	
        return true;
    }
    
    public String getRandomNumberString() {
        // It will generate 6 digit random Number.
        // from 0 to 999999
        Random rnd = new Random();
        int number = rnd.nextInt(999999);

        // this will convert any number sequence into 6 character.
        return String.format("%06d", number);
    }
}