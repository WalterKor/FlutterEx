package Utils;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import User.UserVO;


public class MyUtils {
	public static void openJSP(String fileNe,HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String jsp = "/WEB-INF/view"+fileNe+".jsp";
		req.getRequestDispatcher(jsp).forward(req, res);
	}
	//문자를 숫자로 변환하는 문자열에 숫자말고 다른게 있다면 0을 반환
	public static int parseStringToInt(String val) {
		try {
			int result = Integer.parseInt(val);
			return result;
		} catch (Exception e) {
			return 0;
		}		
	}
	
	
	public static void gogetSession(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession hs = request.getSession();
		UserVO loginUser = (UserVO) hs.getAttribute("loginUser");
		 
		if(loginUser == null) {//로그아웃상태면 로그인페이지로 이동한다.
			 MyUtils.openJSP("/login", request, response);
			 return;
		 }
	}

	
	
}
