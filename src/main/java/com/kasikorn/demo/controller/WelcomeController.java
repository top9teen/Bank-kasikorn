package com.kasikorn.demo.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kasikorn.demo.Bean.FormregisterBean;
import com.kasikorn.demo.Dao.SelTableDao;



@Controller
public class WelcomeController {

	@Autowired
	SelTableDao selTableDao;
	
	@RequestMapping(value="/")
	public String Wel(HttpServletRequest requst) throws SQLException {
		List<FormregisterBean> list = new ArrayList<>();
		list= selTableDao.selre();

		requst.getSession().setAttribute("listUser", list);
		return "index";
	}
}
