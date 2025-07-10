package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Database.DBConnection;
import userBean.userBean;

public class registerDAO {
	public int k;
	public int insert(userBean ub) {
		try {
			Connection con = DBConnection.getConn();
			PreparedStatement ps = con.prepareStatement
					("insert into user001 values(?,?,?,?,?,?,?)");
			ps.setString(3, ub.getfName());
			ps.setString(4, ub.getlName());
			ps.setString(5, ub.getCity());
			ps.setString(6, ub.getmId());
			ps.setString(1, ub.getuName());
			ps.setString(2, ub.getpWord());
			ps.setLong(7, ub.getPhNo());
			
			k = ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return k;
	}

}
