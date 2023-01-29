package com.example.callRest.testPkg;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.example.callRest.entity.User;

public class TestClass {
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	
	public static void main(String[] args) throws Exception{
		
		
		System.out.println("hi hello");
		TestClass t=new TestClass();
		String encode = t.passwordEncoder.encode("qm");
		System.out.println(encode);
	}
	
	

}
