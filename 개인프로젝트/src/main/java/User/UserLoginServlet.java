package User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Utils.MyUtils;


@WebServlet("/user/login")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MyUtils.openJSP("/user/login", request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		
		UserVO vo = new UserVO();
		vo.setUserID(userID);
		vo.setUserPassword(userPassword);
		
		int result = UserDAO.loginUser(vo);
		System.out.println("result : " + result);
		
		if(result == 1) {
			
			HttpSession hs = request.getSession();
			vo.setUserPassword(null);
			hs.setAttribute("loginUser", vo);
			
			response.sendRedirect("/main/main");
			return;
		}
		
		String errMsg = null;
		if(result ==2 ) {
			errMsg = "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.";
		}
		request.setAttribute("errMsg", errMsg);
		doGet(request,response);
		
	}

}
