package com.sas.demo.simplewebapp.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginLogoutController {
	@RequestMapping(method=RequestMethod.GET,value="/login.htm")
	public String home() {
		System.out.println(" ok ....");
		return "login";
	}	
}