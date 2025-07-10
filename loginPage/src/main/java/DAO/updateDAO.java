package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Database.DBConnection;
import userBean.userBean;

public class updateDAO {
	public int k;
	public int update(userBean ub) {
		try {
			Connection con = DBConnection.getConn();
			PreparedStatement ps = con.prepareStatement
					("update user001 set city=?,mid=?,phno=? where uname=? and pword=?");
			ps.setString(1, ub.getCity());
			ps.setString(2, ub.getmId());
			ps.setLong(3, ub.getPhNo());
			ps.setString(4, ub.getuName());
			ps.setString(5, ub.getpWord());
			k = ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return k;
		
	}
}
