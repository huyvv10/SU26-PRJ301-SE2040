
import dal.CategoryDao;
import dal.ProductDao;
import java.util.ArrayList;
import java.util.List;
import models.Category;
import models.Product;

public class TestMain {
    public static void main(String[] args) {
        CategoryDao catDao = new CategoryDao();
        List<Category> listCat = new ArrayList<>();
        listCat = catDao.getAllCategories();
        
        for (Category c : listCat) {
            System.out.println(c.toString());
        }
        
        ProductDao pdao = new ProductDao();                        
        List<Product> listProd = new ArrayList<>();
        listProd = pdao.getAllProducts();
        
        for (Product p : listProd) {
            System.out.println(p.toString());
        }
        
        System.out.println("");
        listProd = pdao.searchProductsByName("ip", "all");
        
        for (Product p : listProd) {
            System.out.println(p.toString());
        }        
        System.out.println("\n---Paging---");
        listProd = pdao.getPaging(4, 7);
        for (Product p : listProd) {
            System.out.println(p.toString());
        }        
        
    }
}
