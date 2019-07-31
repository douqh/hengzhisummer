package servlet;

import DB.DBcon;
import entity.user;
import mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import util.Md5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        String studentID=req.getParameter("studentID");
        int StudentID=Integer.parseInt(studentID);
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String age =req.getParameter("age");
        String passwordByMD5 = Md5.MD5(password);

        user user1 = new user();
        int age1=Integer.parseInt(age);
        user1.setAge(age1);
        user1.setUsername(username);
        user1.setPassword(passwordByMD5);
        user1.setEmail(email);
        user1.setStudentID(StudentID);

        SqlSession sqlsession = null;
        sqlsession = DBcon.getsqlsession();
        System.out.println(user1.getUsername()+user1.getPassword()+user1.getEmail()+user1.getAge()+user1.getStudentID());
        System.out.println("____________________________________--");
        sqlsession.getMapper(UserMapper.class).UpdateUser(user1);
        sqlsession.commit();
        req.setAttribute("Tip", "修改成功");
        req.getRequestDispatcher("/ShowUserServlet?flag=1").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
