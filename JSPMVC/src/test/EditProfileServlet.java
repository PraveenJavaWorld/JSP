package test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/edit")
public class EditProfileServlet extends HttpServlet{
	public ServletContext sct;
	@Override
	public void init() throws ServletException{
		sct=this.getServletContext();
	}
	@Override
	public void doGet(HttpServletRequest req,HttpServletResponse res)
	throws ServletException,IOException{
		PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		Cookie ck[]=req.getCookies();
		if(ck==null){
			pw.println("Please ! Login First...");
			RequestDispatcher rd=req.getRequestDispatcher("Login.html");
			rd.include(req, res);
		}
		else{
			req.setAttribute("name",ck[0].getValue());
			RequestDispatcher rd=req.getRequestDispatcher("EditProfile.jsp");
			rd.forward(req, res);
		}
	}

}
