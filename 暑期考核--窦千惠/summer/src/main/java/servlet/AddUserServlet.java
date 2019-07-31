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

@WebServlet(urlPatterns = "/AddUserServlet")
public class AddUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String addStudentID = req.getParameter("studentID");
        String addEmail = req.getParameter("email");
        String addName = req.getParameter("username");
        String addPassword = req.getParameter("password");
        String addAge = req.getParameter("age");
        int age = Integer.parseInt(addAge);
        String passwordByMD5 = Md5.MD5(addPassword);
        user user1 = new user();
        user1.setAge(age);
        user1.setEmail(addEmail);
        user1.setUsername(addName);
        user1.setPassword(passwordByMD5);
        SqlSession sqlsession = null;
        sqlsession = DBcon.getsqlsession();
        UserMapper userMapper = sqlsession.getMapper(UserMapper.class);
        user user2 = sqlsession.getMapper(UserMapper.class).login(user1);
        sqlsession.commit();
        //添加时查重
        if (user2 != null) {
            req.setAttribute("Tip", "该用户名已存在啦！");
            req.getRequestDispatcher("/AdminManage.jsp").forward(req, resp);
        } else {
            userMapper.AddUser(user1);
            sqlsession.commit();
            req.setAttribute("tip", "添加成功");
            //返回登陆成功者的用户名
            req.setAttribute("username", addName);
            req.getRequestDispatcher("ShowUserServlet?flag=1").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
