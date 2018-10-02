package com.kasikorn.demo.controller;


import java.sql.SQLException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kasikorn.demo.Bean.AmphurBean;
import com.kasikorn.demo.Bean.DistrictBean;
import com.kasikorn.demo.Bean.FormregiterBean;
import com.kasikorn.demo.Bean.FormregiterBean2;
import com.kasikorn.demo.Bean.IdFormReBean;
import com.kasikorn.demo.Bean.KasikornPriceBean;
import com.kasikorn.demo.Bean.MiradoBean;
import com.kasikorn.demo.Bean.ProvinceBean;
import com.kasikorn.demo.Dao.CkDao;
import com.kasikorn.demo.Dao.FormRegisterDao;
import com.kasikorn.demo.Dao.KasikornServer;

@CrossOrigin(origins = "http://localhost:8080")
@RestController
public class SevverController {
	@Autowired
	KasikornServer kasikornServer;
	@Autowired
	FormRegisterDao formRegisterDao;
	@Autowired
	CkDao ckDao;

	@RequestMapping(value="/kaprice" , method = RequestMethod.POST)
	public KasikornPriceBean kars(@RequestBody MiradoBean miradoBean) throws SQLException {
		KasikornPriceBean ff = new KasikornPriceBean();
//		MiradoBean bean = new MiradoBean();
		String a = miradoBean.getGroupType();
		String b = miradoBean.getCarMake2();
		ff = kasikornServer.checkpriceKa(a, b);
		return ff;
	}
	
	@RequestMapping(value = "/bank2", method = RequestMethod.POST)
	public void bank2(@RequestBody FormregiterBean2 formregiterBean2) throws SQLException {
		FormregiterBean nos = new FormregiterBean();
		AmphurBean amp = new AmphurBean();
		ProvinceBean pro = new ProvinceBean();
		DistrictBean dis = new DistrictBean();
		int a = Integer.valueOf(formregiterBean2.getFoAmphur());
		int b =Integer.valueOf(formregiterBean2.getFoProvince());
		int c =Integer.valueOf(formregiterBean2.getFoDistrict());
		amp = ckDao.amphur(a);
		pro = ckDao.province(b);
		dis = ckDao.dis(c);
		nos.setFoDate(new Date());
		formregiterBean2.setFoAmphur(amp.getAmphurName());
		formregiterBean2.setFoProvince(pro.getProvinceName());
		formregiterBean2.setFoDistrict(dis.getDistrictName());
	int am ;
		formRegisterDao.formRegister(formregiterBean2,nos);
		if (formregiterBean2.getFoRadio().equals("1")) {
			IdFormReBean bean2 = new IdFormReBean();
			bean2 = formRegisterDao.idform(formregiterBean2);
		
			formregiterBean2.setMeId(bean2.getFoId());
			formRegisterDao.formRegisterff(formregiterBean2);
		} else {
			
		}

	}
	// end class 
}
