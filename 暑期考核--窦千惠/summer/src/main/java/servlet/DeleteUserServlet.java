package servlet;

import DB.DBcon;
import entity.user;
import mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        String  StudentID =req.getParameter("studentID");
        String loginName = req.getParameter("username");
        int studentID =Integer.parseInt(StudentID);
        user User=new user();
        User.setStudentID(studentID);

        SqlSession sqlsession = null;
        sqlsession= DBcon.getsqlsession();
        UserMapper userMapper = sqlsession.getMapper(UserMapper.class);
        userMapper.DeleteUser(User);
        sqlsession.commit();
        req.setAttribute("tip", "删除成功");
        //返回登陆成功者的用户名
        req.setAttribute("username", loginName);
        req.getRequestDispatcher("ShowUserServlet?flag=1").forward(req, resp);

    }
}
