package test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/reg2")
public class RegServlet2 extends HttpServlet{
	public RegBean rb;
	public ServletContext sct;
	@Override
	public void init() throws ServletException{
		sct=this.getServletContext();
		rb=(RegBean)sct.getAttribute("beanRef");
	}
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	throws ServletException,IOException{
		res.setContentType("text/html");
		String mid=req.getParameter("mid");
		long phno=Long.parseLong(req.getParameter("phno"));
		rb.setMid(mid);
		rb.setPhno(phno);
		RequestDispatcher rd=req.getRequestDispatcher("ViewMsg.jsp");
		rd.forward(req, res);
	}

}
