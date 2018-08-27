package com.kasikorn.demo.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

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
}
