package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Database.DBConnection;
import userBean.userBean;

public class loginDAO {
	public userBean ub = null;
	public userBean login(String uN,String pW) {
		try {
			Connection con = DBConnection.getConn();
			PreparedStatement ps = con.prepareStatement
					("select * from user001 where uname=? and pword=?");
			ps.setString(1, uN);
			ps.setString(2, pW);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				ub = new userBean();
				ub.setuName(rs.getString(1));
				ub.setpWord(rs.getString(2));
				ub.setfName(rs.getString(3));
				ub.setlName(rs.getString(4));
				ub.setCity(rs.getString(5));
				ub.setmId(rs.getString(6));
				ub.setPhNo(rs.getLong(7));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return ub;
		
	}

}
