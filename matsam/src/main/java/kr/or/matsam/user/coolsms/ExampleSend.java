//package kr.or.matsam.user.coolsms;//package com.user.coolsms;
//
//import java.util.HashMap;
//import org.json.simple.JSONObject;
//import org.springframework.stereotype.Controller;
//
//import net.nurigo.java_sdk.api.Message;
//import net.nurigo.java_sdk.exceptions.CoolsmsException;
//
///**
// * @class ExampleSend
// * @brief This sample code demonstrate how to send sms through CoolSMS Rest API
// *        PHP
// */
//@Controller
//public class ExampleSend {
//	public static void main(String[] args) {
//		String api_key = "#ENTER_YOUR_OWN#";
//		String api_secret = "#ENTER_YOUR_OWN#";
//		Message coolsms = new Message(api_key, api_secret);
//
//		// 4 params(to, from, type, text) are mandatory. must be filled
//		HashMap<String, String> params = new HashMap<String, String>();
//		params.put("to", "01086129065");
//		params.put("from", "01086129065");
//		params.put("type", "SMS");
//		params.put("text", "Coolsms Testing Message!용용용");
//		params.put("app_version", "test app 1.2"); // application name and version
//
//		try {
//			JSONObject obj = (JSONObject) coolsms.send(params);
//			System.out.println(obj.toString());
//		} catch (CoolsmsException e) {
//			System.out.println(e.getMessage());
//			System.out.println(e.getCode());
//		}
//	}
//}