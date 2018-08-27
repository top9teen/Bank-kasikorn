package com.kasikorn.demo.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kasikorn.demo.Bean.KasikornPriceBean;
import com.kasikorn.demo.Bean.MiradoBean;
import com.kasikorn.demo.Dao.KasikornServer;

@CrossOrigin(origins = "http://localhost:8080")
@RestController
public class SevverController {
	@Autowired
	KasikornServer kasikornServer;

	@RequestMapping(value="/kaprice" , method = RequestMethod.POST)
	public KasikornPriceBean kars(@RequestBody MiradoBean miradoBean) throws SQLException {
		KasikornPriceBean ff = new KasikornPriceBean();
//		MiradoBean bean = new MiradoBean();
		String a = miradoBean.getGroupType();
		String b = miradoBean.getCarMake2();
		ff = kasikornServer.checkpriceKa(a, b);
		return ff;
	}
}
