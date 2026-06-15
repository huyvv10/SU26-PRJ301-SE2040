
import dal.CategoryDao;
import java.util.ArrayList;
import java.util.List;
import models.Category;

public class TestMain {
    public static void main(String[] args) {
        CategoryDao catDao = new CategoryDao();
        List<Category> listCat = new ArrayList<>();
        listCat = catDao.getAllCategories();
        
        for (Category c : listCat) {
            System.out.println(c.toString());
        }
    }
}
