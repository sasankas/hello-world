package com.tcs.demo.simplewebapp;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;

import java.io.UnsupportedEncodingException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;




/*@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:/applicationContext.xml"})
@WebAppConfiguration("src/main/webapp")*/
public class PersonControllerTestCase {
	@Autowired
	WebApplicationContext wac;
	
	//@Test
	public void f() throws UnsupportedEncodingException, Exception{
		MockMvc mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
		
		System.out.println(
				mockMvc.perform(
						post("/login/auth")
						.param("userName", "userName"))
		.andReturn().getResponse().getContentAsString());
	}
	
	//@Test
	public void ff() throws UnsupportedEncodingException, Exception{
		MockMvc mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
		MockHttpServletResponse response = mockMvc.perform(
				get("/dashboard/getLineGraph")
				.param("userName", "userName"))
				.andReturn().getResponse();
		
		System.out.println("getContentAsString:"+
				response.getContentAsString());
	}
	

}