

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class IndexServlet
 */
@WebServlet({ "/Index", "/Index/*" })
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
 		response.setCharacterEncoding("UTF-8");
 		String path = request.getPathInfo();
 		if(path==null || path.trim().length()==0)
 		{
 			request.getRequestDispatcher("/index.jsp").include(request, response);
 			return;
 		}
 		path = path.substring(1);
 		if(path.equals("kayitol"))
 		{
 			request.getRequestDispatcher("/kayitol.jsp").include(request, response);
 		}
 		else if(path.equals("cikis")) 
 		{
 			HttpSession session = request.getSession(true);
 			if (session.getAttribute("oturum")==null)
 			{
 				request.setCharacterEncoding("UTF-8");
 		 		response.setCharacterEncoding("UTF-8");
 				response.getWriter().print("Önce giriş yapmalısınız!");
 				return;
 			}
 			
 			session.removeAttribute("oturum");
 			session.removeAttribute("kAdi");
 			session.removeAttribute("sifre");
 			response.sendRedirect("../Index");
 		}
 		
	}
 
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection cnn = null;
		java.sql.PreparedStatement st;
		java.sql.ResultSet rs;
		PrintWriter out = response.getWriter();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			cnn = DriverManager.getConnection("jdbc:mysql://localhost/moda_uyelik","root","");			
		}
		catch (Exception e)
		{
			out.print(e.getMessage());
		}
		
		String path = request.getPathInfo();
		if(path==null || path.trim().length()==0)
		{
			request.getRequestDispatcher("/index.jsp").include(request, response);
	 		return;
	 	}
		
		path = path.substring(1);
		String kAdi = request.getParameter("kAdi");
		String sifre = request.getParameter("sifre");
		String email = request.getParameter("email");
		String aktiflik = request.getParameter("aktiflik");
		if(kAdi == null || kAdi.trim().length() == 0 || sifre == null || sifre.trim().length() == 0)
		{
			request.setCharacterEncoding("UTF-8");
		 	response.setCharacterEncoding("UTF-8");
			out.print("Tüh :( Bos Alanlari Doldurmayi Unuttunuz!");
			return;
		}
			
 		if(path.equals("giris"))
 		{
 			try
 			{
 			st = cnn.prepareStatement("SELECT * FROM uyeler WHERE kAdi=? and sifre=?");
 			st.setString(1, kAdi);
 			st.setString(2, sifre);
 			rs = st.executeQuery();
 			
 				if(!rs.next())
 				{
 					request.setCharacterEncoding("UTF-8");
 	 		 		response.setCharacterEncoding("UTF-8");
 					out.print("Malesef Böyle Bir Kullanici Bulunmuyor :/");
 					return;
 				}
 				
 			HttpSession session = request.getSession(true);
 			session.setAttribute("oturum", true);
 			session.setAttribute("kAdi", rs.getString("kAdi"));
 			session.setAttribute("sifre", rs.getString("sifre"));
 			response.sendRedirect("../resimgalerisi.jsp");
 			} 
 			catch (Exception e) 
 			{
 				out.print(e.getMessage());
 				return;
 			}
		}
 		else if(path.equals("kayitol"))
 		{
			try
			{
	 			st = cnn.prepareStatement("SELECT * FROM uyeler WHERE kAdi=? ");
	 			st.setString(1, kAdi);
	 			rs = st.executeQuery();
	 			st = cnn.prepareStatement("INSERT INTO uyeler SET kAdi=?,sifre=?,email=?,aktiflik=?");
	 			st.setString(1, kAdi);
	 			st.setString(2, sifre);
				st.setString(3, email);
				st.setString(4, aktiflik);
				int oldu = st.executeUpdate();
				if(oldu==0)
				{
					out.print("Kayıt yapılamadı...");
					return;
				}
				else if(oldu==1) {
					response.sendRedirect("../kayitbas.jsp");
					
				}
	 			HttpSession session = request.getSession(true);
	 			session.setAttribute("oturum", true);
	 			session.setAttribute("kAdi", rs.getString("kAdi"));
	 			session.setAttribute("sifre", rs.getString("sifre"));
	 			response.sendRedirect("../Index");
	 		} 
			catch (Exception e) 
			{
	 			out.print(e.getMessage());
	 			return;
	 			
			}
		}
	}

}
