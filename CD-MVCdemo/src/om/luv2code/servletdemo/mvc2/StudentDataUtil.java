package om.luv2code.servletdemo.mvc2;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents(){
		List<Student> students=new ArrayList<>();
		students.add(new Student("first1","last1","firs1@gmail.com"));
		students.add(new Student("first2","last2","firs2@gmail.com"));
		students.add(new Student("first3","last3","firs3@gmail.com"));
		return students;
	}
}
