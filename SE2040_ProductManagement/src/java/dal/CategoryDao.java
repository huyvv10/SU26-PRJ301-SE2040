
package dal;

import java.util.ArrayList;
import java.util.List;
import models.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CategoryDao extends DBContext{
    public List<Category> getAllCategories(){
        List<Category> listCat = new ArrayList<>();
        String sql = "SELECT * FROM tbCategory";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                String id = rs.getString(1);
                String name = rs.getString(2);
                Category x = new Category(id, name);
                listCat.add(x);
            }
            return listCat;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
}
