

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Connectiondb")
public class Connectiondb extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Connectiondb() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Pravindb","root","Pravin@2698");
			  Statement st = con.createStatement();
				ResultSet r = st.executeQuery("select * from pscorner");
				System.out.println("MenuName MenuPrice");
				while(r.next()) 
				{
				  System.out.println(r.getString(1)+"\t"+r.getInt(2));
				}
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}*/
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con = null;
		
		try {
			String cuname = request.getParameter("cname");
			int cmbn = Integer.valueOf(request.getParameter("mob"));
			String cadd = request.getParameter("add");
			
			 Class.forName("com.mysql.cj.jdbc.Driver");
		     System.out.println("Driver Loaded");
		     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Pravindb","root","Pravin@2698");
             System.out.println("Connection Done....");
             
             String status = "Data is not Inserted";
             
             String sql = "insert into pravindb.pscustomer values(?,?,?)";
             PreparedStatement ps = con.prepareStatement(sql);
             ps.setString(1, cuname);
             ps.setInt(2, cmbn);
             ps.setString(3, cadd);
             
             int i = ps.executeUpdate();
             status = "Data Inserted Successful";
             
             if(i!=0)
             {
            	 String htmlResp = "<html>";
            	 htmlResp += "<h2 style = text-align:center> Your Order has been placed Successfully.</h2>";
            	 htmlResp += "</html>";
            	 out.println(htmlResp);
             } else  {
            	 String htmlResp = "<html>";
            	 htmlResp += "<h2 style = text-align:center> Error...Please retry</h2>";
            	 htmlResp += "</html>";
            	 out.println(htmlResp);
             }
        
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		out.print("<a href='Home.jsp'><h2 style=text-align:center>gotoHomePage</a>");
		out.print("<a href='Menu.jsp'><h2 style=text-align:center><b>gotoMenuPage</b></h2></a>");
		
	}
}
