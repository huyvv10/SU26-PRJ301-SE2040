
import dal.StudentDAO;
import java.util.ArrayList;
import java.util.List;
import models.Student;


public class TestMain {
    public static void main(String[] args) {
        StudentDAO dao = new StudentDAO();
        List<Student> myList = new ArrayList<>();
        
//        dao.deleteStudent("014");
        
        dao.addStudent("005", "Bác Ba Phi", "2000-3-13", "Nam");
        myList = dao.getAllStudent();
        
        for (Student x : myList) {
            System.out.println(x.toString());
        }
        System.out.println("");
        Student x = dao.getStudentById("004");
        System.out.println(x.toString());
        
        dao.updateStudent("004", "Lã Bố", "2000-10-10", "Nam");
        System.out.println("");
        x = dao.getStudentById("004");
        System.out.println(x.toString());        
    }
 
}
