package com.kasikorn.demo.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.kasikorn.demo.Bean.FormMemBean;
import com.kasikorn.demo.Bean.FormregisterBean;
import com.kasikorn.demo.DB.ConnectDB;



@Repository
public class FormRegisterDao {

	
	public FormregisterBean vvvv(int simpleTestBean) throws SQLException {
		FormregisterBean bean = new FormregisterBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM  formregiter WHERE fo_id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, simpleTestBean);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setFoId(rs.getInt("fo_id"));
				bean.setFoGroupType(rs.getString("fo_groupType"));
				bean.setFoCarMake(rs.getString("fo_carMake"));
				bean.setFoCarMake2(rs.getString("fo_carMake2"));
				bean.setFoLessmoney(rs.getString("fo_lessmoney"));
				bean.setFoLessyear(rs.getString("fo_lessyear"));
				bean.setFoTypebank(rs.getString("fo_typebank"));
				bean.setFoCheckbox1(rs.getString("fo_checkbox1"));
				bean.setFoCheckbox2(rs.getString("fo_checkbox2"));
				bean.setFoCheckbox3(rs.getString("fo_checkbox3"));
				bean.setFoCheckbox4(rs.getString("fo_checkbox4"));
				bean.setFoPrefix(rs.getString("fo_prefix"));
				bean.setFoFNameTH(rs.getString("fo_fNameTH"));
				bean.setFoLNameTH(rs.getString("fo_lNameTH"));
				bean.setFoBirthDay(rs.getString("fo_birthDay"));
				bean.setFoBirthMonth(rs.getString("fo_birthMonth"));
				bean.setFoBirthYear(rs.getString("fo_birthYear"));
				bean.setFoRefID(rs.getString("fo_refID"));
				bean.setFoMobilePhone(rs.getString("fo_mobilePhone"));
				bean.setFoEmail(rs.getString("fo_email"));
				bean.setFoAvailableTime(rs.getString("fo_availableTime"));
				bean.setFoJob(rs.getString("fo_job"));
				bean.setFoSalary(rs.getString("fo_salary"));
				bean.setFoYearOfService(rs.getString("fo_yearOfService"));
				bean.setFoMonthOfService(rs.getString("fo_monthOfService"));
				bean.setFoBureauPaidedStatusPaid(rs.getString("fo_bureauPaidedStatusPaid"));
				bean.setFoPropertyProjectName(rs.getString("fo_propertyProjectName"));
				bean.setFoProvince(rs.getString("fo_province"));
				bean.setFoAmphur(rs.getString("fo_amphur"));
				bean.setFoDistrict(rs.getString("fo_district"));
				bean.setFoRadio(rs.getString("fo_Radio"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}

		return bean;
	}
	
	public FormMemBean vvvv2(int simpleTestBean) throws SQLException {
		FormMemBean bean = new FormMemBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM  formmen WHERE me_id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, simpleTestBean);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setMeId(rs.getInt("me_id"));
				bean.setMePrefix2(rs.getString("me_prefix2"));
				bean.setMeFname2(rs.getString("me_fname2"));
				bean.setMeLname2(rs.getString("me_lname2"));
				bean.setMeBirthDay2(rs.getString("me_birthDay2"));
				bean.setMeBirthMonth2(rs.getString("me_birthMonth2"));
				bean.setMeBirthMonth2(rs.getString("me_birthYear2"));
				bean.setMeTalaphone2(rs.getString("me_talaphone2"));
				bean.setMeEmail2(rs.getString("me_email2"));
				bean.setMeJob2(rs.getString("me_job2"));
				bean.setMeSalary2(rs.getString("me_salary2"));
				bean.setMeMonthOfService2(rs.getString("me_monthOfService2"));
				bean.setMeYearOfService2(rs.getString("me_yearOfService2"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}

		return bean;
	}
	//end
}
