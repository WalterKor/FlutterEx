package User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Utils.MyUtils;


@WebServlet("/user/join")
public class UserJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MyUtils.openJSP("/user/join", request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		String userName = request.getParameter("userName");
		String userEamil = request.getParameter("userEamil");
		String UserGender = request.getParameter("UserGender");
		
		/*
		System.out.println("userID : " +userID);
		System.out.println("userPassword : " +userPassword);
		System.out.println("userName : " +userName);
		System.out.println("userEamil : " +userEamil);
		System.out.println("UserGender : " +UserGender);
		*/
		
		UserVO vo = new UserVO();
		vo.setUserID(userID);
		vo.setUserPassword(userPassword);
		vo.setUserName(userName);
		vo.setUserEmail(userEamil);
		vo.setUserGender(UserGender);
		
		UserDAO.join(vo);
		

		
		MyUtils.openJSP("/board/login", request, response);
		
		
				
	}

}
