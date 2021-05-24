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

	public static void join(UserVO vo) {
		
		Connection con = null;
		PreparedStatement ps = null;
		String sql = " INSERT INTO user (userID,userPassword,userName,userEmail,userGender) "
					+" VALUES (?, ?, ?, ?, ?)" ;
		
		try {
			con = DBUtils.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getUserID());
			ps.setString(2, vo.getUserPassword());
			ps.setString(3, vo.getUserName());
			ps.setString(4, vo.getUserEmail());
			ps.setString(5, vo.getUserGender());
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtils.close(con, ps);
		}
				
	}

	public static int loginUser(UserVO vo) {
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql =" SELECT userID, userPassword FROM user WHERE userID = '?' ";
		
		try {
			con = DBUtils.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getUserID());
			rs = ps.executeQuery();
			
			if(rs.next()) {
				String pass = rs.getString("userPassword");
				if (pass.equals(vo.getUserPassword())) {
					return 1;
				}
			}	
		}catch (Exception e) {
			e.printStackTrace();
			return 2;
		}finally {
			DBUtils.close(con, ps, rs);
		}
		return 1;
		
		
	}
	
}
