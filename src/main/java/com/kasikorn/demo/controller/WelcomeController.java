package com.kasikorn.demo.controller;


import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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
	

	
	/*public static void main(String[] args) {
		// initialize SimpleDateFormat object
				DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

				try {
					// Convert String to Date in java
					Date today = sdf.parse("14/11/2018");
					Calendar cal =  Calendar.getInstance();
					System.out.println("Date is : " + today.toString());

					// using locale
					sdf = new SimpleDateFormat("dd-MM-yyyy", Locale.getDefault());
					//DateFormat sdf1 = new SimpleDateFormat("dd-MMM-yyyy", Locale.CANADA_FRENCH);

					
					today = new Date();
					cal.setTime(today);
					int y =0 ,m=0,d=0;
					y=cal.get(Calendar.YEAR);
					m = cal.get(Calendar.MONTH);
					d = cal.get(Calendar.DATE);
				//	System.out.println("Default Date is : " + today.toString());

					// Convert Date to String in Java
				//	System.out.println("CHINESE Format Date : "+sdf.format(today));
					String s = "";
					s= String.format("%s %s %s", d,m+1,y);
					System.out.println(s);
					System.out.println(d);
					System.out.println(m+1);
					System.out.println(y);
					//System.out.println("CANADA_FRENCH Format Date : "+sdf1.format(today));

				} catch (ParseException e) {
					e.printStackTrace();
				}
}*/
 
}
