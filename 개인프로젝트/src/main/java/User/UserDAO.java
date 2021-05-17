package User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	public int login(String userID, String userPassword) {
		
		Connection con = null;
		PreparedStatement ps = null;	
		ResultSet rs = null;
		String sql = "select userPassword from user where userID = ?"; 
		
		try {
			con = DBUtils.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, userID);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //로그인성공
				}else {
					return 0;//비밀번호틀렸다.
				}
			}
			return -1;			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtils.close(con, ps);
		}return -2;
		
		
	}
	
}
