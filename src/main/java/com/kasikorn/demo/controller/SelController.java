package com.kasikorn.demo.controller;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kasikorn.demo.Bean.FormMemBean;
import com.kasikorn.demo.Bean.FormregisterBean;
import com.kasikorn.demo.Bean.GatherBean;
import com.kasikorn.demo.Bean.SimpleTestBean;
import com.kasikorn.demo.Dao.FormRegisterDao;
import com.kasikorn.demo.Dao.SelTableDao;



@RestController
public class SelController {

	@Autowired
	FormRegisterDao formRegisterDao;
	@Autowired
	SelTableDao selTableDao;
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
	public String bean22swws(@RequestBody SimpleTestBean simpleTestBean) throws SQLException, ParseException{
		String num = "";
		DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date today = sdf.parse("14/11/2018");
		Calendar cal =  Calendar.getInstance();
		today = new Date();
		cal.setTime(today);
		int y =0 ,m=0;
		y=cal.get(Calendar.YEAR);
		m = cal.get(Calendar.MONTH);
		//d = cal.get(Calendar.DATE);
		GatherBean gabean = new GatherBean();
		Integer x = Integer.valueOf(simpleTestBean.getXxx());
		FormregisterBean bean = new FormregisterBean();
		bean=formRegisterDao.vvvv(x);
		try {
			
			gabean = selTableDao.selrewwqew(bean.getFoId());
			if(gabean.getGaId()  <1) {
			
				gabean.setGaId(bean.getFoId());
				gabean.setGaName(bean.getFoFNameTH());
				gabean.setGaEmail(bean.getFoEmail());
				gabean.setGaPrie(bean.getReMonny());
				gabean.setGaCar(bean.getFoCarMake2());
				Integer ao = Integer.valueOf(bean.getFoLessyear());
				gabean.setGaFistPeriod(ao);
				gabean.setGaLastPeriod(ao);
				gabean.setGaDay(5);
				gabean.setGaMont(m+2);
				gabean.setGayear(y);
				selTableDao.Gedd(gabean);
				num ="1";
			}
			else {
				num ="2";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return num ;
	}
	

// end class
}
