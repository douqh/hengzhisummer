package servlet;

import DB.DBcon;
import entity.user;
import mapper.UserMapper;
import org.apache.ibatis.jdbc.Null;
import org.apache.ibatis.session.SqlSession;
import util.Md5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String password=req.getParameter("password");
        String RePassword=req.getParameter("RePassword");
        String studentID=req.getParameter("studentID");
        int StudentID=Integer.parseInt(studentID);
        System.out.println(password+"__________"+RePassword+"________");
        if (password!=""&&RePassword!="") {
            if (password==RePassword) {
                String passwordByMD5 = Md5.MD5(password);
                user User = new user();
                User.setPassword(passwordByMD5);
                User.setStudentID(StudentID);
                SqlSession sqlsession = null;
                sqlsession = DBcon.getsqlsession();
                sqlsession.getMapper(UserMapper.class).UpdatePassword(User);
                sqlsession.commit();
                req.setAttribute("Tip", "修改成功！");
                req.getRequestDispatcher("/ChangePassword.jsp").forward(req, resp);

            } else {
                req.setAttribute("Tip", "两次输入密码不一致！");
                req.getRequestDispatcher("/ChangePassword.jsp").forward(req, resp);
            }
        }else {
            req.setAttribute("Tip", "输入内容为空！");
            req.getRequestDispatcher("/ChangePassword.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
