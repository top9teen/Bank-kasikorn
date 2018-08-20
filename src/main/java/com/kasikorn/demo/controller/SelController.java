package com.kasikorn.demo.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kasikorn.demo.Bean.FormMemBean;
import com.kasikorn.demo.Bean.FormregisterBean;
import com.kasikorn.demo.Bean.SimpleTestBean;
import com.kasikorn.demo.Dao.FormRegisterDao;



@RestController
public class SelController {

	@Autowired
	FormRegisterDao formRegisterDao;
	
	@RequestMapping(value="/FFF", method = RequestMethod.POST)
	public FormregisterBean bean22(@RequestBody SimpleTestBean simpleTestBean) throws SQLException{
		
		FormregisterBean bean = new FormregisterBean();
		Integer x = Integer.valueOf(simpleTestBean.getXxx());

		bean  = formRegisterDao.vvvv(x);
		return bean;
	}
	@RequestMapping(value="/MFD", method = RequestMethod.POST)
	public FormMemBean bean22ss(@RequestBody SimpleTestBean simpleTestBean) throws SQLException{
		
		FormMemBean bean = new FormMemBean();
		Integer x = Integer.valueOf(simpleTestBean.getXxx());

		bean  = formRegisterDao.vvvv2(x);
		return bean;
	}
	
	@RequestMapping(value="/JJJ", method = RequestMethod.POST)
	public void bean22swws(@RequestBody SimpleTestBean simpleTestBean) throws SQLException{
		
		
		Integer x = Integer.valueOf(simpleTestBean.getXxx());
		FormregisterBean bean = new FormregisterBean();
		bean=formRegisterDao.vvvv(x);
		
		
		
	}

}
