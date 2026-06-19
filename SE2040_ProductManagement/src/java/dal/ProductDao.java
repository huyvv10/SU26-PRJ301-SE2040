package dal;

import java.util.ArrayList;
import java.util.List;
import models.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

public class ProductDao extends DBContext{
    public List<Product> getAllProducts(){
        List<Product> prodList = new ArrayList<>();
        String sql = "SELECT * FROM tbProduct";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                String id = rs.getString(1);
                String name = rs.getString(2);
                int qty = rs.getInt(3);
                Date impDate = rs.getDate(4);
                double price = rs.getDouble(5);
                String catId = rs.getString(6);
                Product x = new Product(id, name, qty, impDate, qty, catId);
                prodList.add(x);
            } 
            return prodList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
        public List<Product> searchProductsByName(String kw, String cat){
        List<Product> prodList = new ArrayList<>();
        String sql1 = "SELECT * FROM tbProduct\n" +
                     "WHERE name LIKE '%"+kw+"%'";
        String sql2 = "SELECT * FROM tbProduct\n" +
                     "WHERE name LIKE '%"+kw+"%' AND catId = '"+cat+"'";
        String sql = cat.equals("all")? sql1 : sql2;
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                String id = rs.getString(1);
                String name = rs.getString(2);
                int qty = rs.getInt(3);
                Date impDate = rs.getDate(4);
                double price = rs.getDouble(5);
                String catId = rs.getString(6);
                Product x = new Product(id, name, qty, impDate, qty, catId);
                prodList.add(x);
            } 
            return prodList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
}
