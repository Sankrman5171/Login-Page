package servlet;

import java.io.IOException;

import DAO.registerDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import userBean.userBean;
@SuppressWarnings("serial")
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		userBean ub = new userBean();  //Bean Object
		
		ub.setfName(req.getParameter("fname"));
		ub.setlName(req.getParameter("lname"));
		ub.setCity(req.getParameter("city"));
		ub.setmId(req.getParameter("mid"));
		ub.setuName(req.getParameter("uname"));
		ub.setpWord(req.getParameter("pword"));
		ub.setPhNo(Long.parseLong(req.getParameter("phno")));
		
		int k = new registerDAO().insert(ub);
		if(k>0) {
			req.setAttribute("msg", "User Registered Successfully!!<br>");
			req.getRequestDispatcher("RegSuccess.jsp").forward(req, res);
		}
	}

}
