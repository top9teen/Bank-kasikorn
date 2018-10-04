package com.kasikorn.demo.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.kasikorn.demo.Bean.GatherBean;
import com.kasikorn.demo.Bean.KasikornPriceBean;
import com.kasikorn.demo.DB.ConnectDB;


@Repository
public class KasikornServer {

	
	// kasikorn_price
			public KasikornPriceBean checkpriceKa(String carYear, String carMake2) throws SQLException {
				KasikornPriceBean kabean = new KasikornPriceBean();
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				Connection conn = con.openConnect();

				try {
					sql.append(" SELECT * FROM kasikorn_price WHERE  ye_year= ? and br_name= ? ");
					prepared = conn.prepareStatement(sql.toString());
					prepared.setString(1, carYear);
					prepared.setString(2, carMake2);
					ResultSet rs = prepared.executeQuery();
					while (rs.next()) {
						kabean.setKaPrice(rs.getInt("ka_price"));
						
					}
				} catch (Exception e) {

					// TODO: handle exception
				}
				finally {
					conn.close();
				}


				return kabean;
			}
			public List<GatherBean> branddd(String email, int M, int D) throws SQLException {

				GatherBean bean = new GatherBean();
				List<GatherBean> list = new ArrayList<>();
				ConnectDB con = new ConnectDB();
				Connection conn = con.openConnect();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();

				try {
					sql.append(" SELECT * FROM gather WHERE  ga_email = ? and ga_mont = ? ");
					prepared = conn.prepareStatement(sql.toString());
					prepared.setString(1, email);
					prepared.setInt(2, M);

					ResultSet rs = prepared.executeQuery();

					while (rs.next()) {

						bean = new GatherBean();
						if (D <= 31) {
							bean.setGaId(rs.getInt("ga_id"));
							bean.setGaName(rs.getString("ga_name"));
							bean.setGaCar(rs.getString("ga_car"));
							bean.setGaFistPeriod(rs.getInt("ga_fistPeriod"));
							bean.setGaLastPeriod(rs.getInt("ga_lastPeriod"));
							bean.setGaEmail(rs.getString("ga_email"));
							bean.setGaPrie(rs.getInt("ga_prie"));
							bean.setGaDay(rs.getInt("ga_day"));
							bean.setGaMont(rs.getInt("ga_mont"));
							bean.setGayear(rs.getInt("ga_year"));
							bean.setGaUser(rs.getInt("ga_user"));

							list.add(bean);
						}
					}
				} catch (Exception e) {
					// TODO: handle exception
				} finally {
					conn.close();
				}

				return list;
			}
			
			//end class
}
