package com.kasikorn.demo.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.kasikorn.demo.Bean.FormregisterBean;
import com.kasikorn.demo.Bean.GatherBean;
import com.kasikorn.demo.DB.ConnectDB;



@Repository
public class SelTableDao {


	public List<FormregisterBean> selre () throws SQLException{
		FormregisterBean bean = new FormregisterBean();
		List<FormregisterBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM  formregiter ");
			prepared = conn.prepareStatement(sql.toString());
			
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				bean = new FormregisterBean();
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
					
					
					list.add(bean);
					
				
				
		
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			conn.close();
		}
		
		return list ;
	}
	public void Gedd (GatherBean bean )  throws SQLException{
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" INSERT INTO gather (ga_id,ga_name,ga_email,ga_prie,ga_fistPeriod,ga_lastPeriod,ga_day,ga_mont,ga_year,ga_car,ga_user)VALUES(?,?,?,?,?,?,?,?,?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, bean.getGaId());
			prepared.setString(2, bean.getGaName());
			prepared.setString(3, bean.getGaEmail());
			prepared.setInt(4, bean.getGaPrie());
			prepared.setInt(5, bean.getGaFistPeriod());
			prepared.setInt(6, bean.getGaLastPeriod());
			prepared.setInt(7, bean.getGaDay());
			prepared.setInt(8, bean.getGaMont());
			prepared.setInt(9, bean.getGayear());
			prepared.setString(10, bean.getGaCar());
			prepared.setInt(11, bean.getGaUser());
			prepared.executeUpdate();
			

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		
	}
	
	public GatherBean selrewwqew (int a) throws SQLException{
		GatherBean bean = new GatherBean();
	
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT ga_id FROM  gather WHERE ga_id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, a);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
		bean.setGaId(rs.getInt("ga_id"));
		

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			conn.close();
		}
		
		return bean ;
	}
	// end class 
}
