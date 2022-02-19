package com.klu.demo.repository;

import com.klu.demo.model.SmsRequest;

public interface TwilioSms {

    String sendSms(SmsRequest smsRequest);

    // or maybe void sendSms(String phoneNumber, String message);
}