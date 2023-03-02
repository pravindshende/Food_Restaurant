package productcore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductDB {
	private Connection con;
	private PreparedStatement pst;
	private ResultSet rs;
	private String query;

	public List<Product> getAllProducts() throws ClassNotFoundException, SQLException
	{
		List<Product> prdt = new ArrayList<Product>();
		 Class.forName("com.mysql.cj.jdbc.Driver");
	     System.out.println("Driver Loaded");
	     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Pravindb","root","Pravin@2698");
         System.out.println("Connection Established with database");
         
         Statement st = con.createStatement();
         ResultSet rs = st.executeQuery("select * from pscorner");
         while(rs.next())
         {
        	 Product row = new Product();
        	 row.setName(rs.getString("MenuName"));
        	 row.setPrice(rs.getString("MenuPrice"));
        	 
        	 prdt.add(row);
         }
         return prdt;
	}
	public List<Cart1> getCartProducts(ArrayList<Cart1> cartList){
		List<Cart1> prdt = new ArrayList<Cart1>();
		try {
			if(cartList.size()>0) {
				for(Cart1 item:cartList) {
					query = "select * from pscorner where name = ?";
					 pst = this.con.prepareStatement(query);
		             pst.setString(1, item.getName());
			         rs = pst.executeQuery();
			         while(rs.next()) {
			        	 Cart1 row = new Cart1();
			        	 row.setName(rs.getString("MenuName"));
			        	 row.setPrice(rs.getString("MenuPrice")+"*"+item.getQuantity());
			        	 row.setQuantity(item.getQuantity());
			        	 prdt.add(row);
			         }
				}
			}
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
			//e.printStackTrace();
		}
		return prdt;
	}
}
