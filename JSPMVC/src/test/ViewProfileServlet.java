package test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/view1")
public class ViewProfileServlet extends HttpServlet{
	public ServletContext sct;
	@Override
	public void init() throws ServletException{
		sct=this.getServletContext();
	}
	@Override
	public void doGet(HttpServletRequest req,HttpServletResponse res)
	throws ServletException,IOException{
		//PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		Cookie ck[]=req.getCookies();
		if(ck==null){
			req.setAttribute("msg","Please ! Login First");
			RequestDispatcher rd=req.getRequestDispatcher("Login-Error.jsp");
			rd.include(req, res);
		}
		else{
			req.setAttribute("name",ck[0].getValue());
			RequestDispatcher rd=req.getRequestDispatcher("ViewProfile.jsp");
			rd.forward(req, res);
		}
	}

}
