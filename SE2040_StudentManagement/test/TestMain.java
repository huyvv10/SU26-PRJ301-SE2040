
import dal.StudentDAO;
import java.util.ArrayList;
import java.util.List;
import models.Student;


public class TestMain {
    public static void main(String[] args) {
        StudentDAO dao = new StudentDAO();
        List<Student> myList = new ArrayList<>();
        myList = dao.getAllStudent();
        
        for (Student x : myList) {
            System.out.println(x.toString());
        }
    }
 
}
