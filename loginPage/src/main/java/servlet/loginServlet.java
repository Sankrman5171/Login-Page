package servlet;

import java.io.IOException;
import DAO.loginDAO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import userBean.userBean;
@SuppressWarnings("serial")
@WebServlet("/log")
public class loginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
		System.out.println("loginServlet.doPost()");
		String uN = req.getParameter("uname");
		String pW = req.getParameter("pword");
		userBean ub = new loginDAO().login(uN, pW);
		if(ub == null) {
			req.setAttribute("msg", "invalid Login Process.....<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			Cookie ck = new Cookie("fname", ub.getfName());
			ServletContext sct = req.getServletContext();
				//accessing Servletcotext Object reference
			sct.setAttribute("ubean", ub);
			res.addCookie(ck);
				//adding cookie is response
			req.getRequestDispatcher("logSuccess.jsp").forward(req, res);
			
		}
	}

}
