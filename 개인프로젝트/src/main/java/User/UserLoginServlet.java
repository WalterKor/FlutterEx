package User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.Board5.User.BoardUserVO;

import Utils.MyUtils;


@WebServlet("/user/login")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession hs = request.getSession();
		UserVO loginUser = (UserVO)hs.getAttribute("loginUser");
		if(loginUser == null) {			
			String jsp = "/WEB-INF/view/login.jsp";
			request.getRequestDispatcher(jsp).forward(request, response);
		}
				
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		
		System.out.println("userID : " +userID);
		System.out.println("userPassword : " +userPassword);
		
		
	}

}
