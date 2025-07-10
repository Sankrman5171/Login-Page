package servlet;

import java.io.IOException;

import DAO.updateDAO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import userBean.userBean;
@SuppressWarnings("serial")

@WebServlet("/update")
public class updateProfileServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException{
		Cookie c[] = req.getCookies();
		if(c==null) {
			req.setAttribute("msg", "Sorry! Session expired!!<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			String fN = c[0].getValue();
			req.setAttribute("fname", fN);
			ServletContext sct = req.getServletContext();
			
			userBean ub = (userBean)sct.getAttribute("ubean");
			ub.setCity(req.getParameter("city"));
			ub.setmId(req.getParameter("mid"));
			ub.setPhNo(Long.parseLong(req.getParameter("phno")));
			
			int k = new updateDAO().update(ub);
			
			if(k>0) {
				req.setAttribute("msg", "----Profile Updated Successfully!!!<br>");
				req.getRequestDispatcher("updateProfile.jsp").forward(req, res);
			}
		}
	}

}
