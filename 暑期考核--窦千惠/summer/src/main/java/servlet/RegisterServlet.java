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

@WebServlet(urlPatterns = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");

        String studentID = req.getParameter("studentID");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String registerCode = req.getParameter("code");
        String passwordByMD5 = Md5.MD5(password);

        if (studentID != "" || username != "" || password != "" || email != "") {
            SqlSession sqlsession = null;
            sqlsession = DBcon.getsqlsession();
            user user1 = new user();
            int StudentID = Integer.parseInt(studentID);
           user1.setStudentID(StudentID);
            user1.setUsername(username);
            user1.setPassword(passwordByMD5);
            user1.setEmail(email);
            user user2 = sqlsession.getMapper(UserMapper.class).login(user1);
            sqlsession.commit();
            //注册时查重
            if (user2 != null) {
                req.setAttribute("RegisterTip", "该用户名已存在啦！");
                req.getRequestDispatcher("LoginAndRegister.jsp").forward(req, resp);
            } else {
                int i = Integer.parseInt(registerCode);
                int iCode = (int) req.getSession().getAttribute("result");
                if (iCode != i) {
                    req.setAttribute("RegisterTip", "验证码有误");
                    req.getRequestDispatcher("LoginAndRegister.jsp").forward(req, resp);
                    return;
                } else {
                    sqlsession.getMapper(UserMapper.class).register(user1);
                    sqlsession.commit();
                    req.setAttribute("LoginTip", "注册成功啦！快去登录吧！");
                    req.getRequestDispatcher("/LoginAndRegister.jsp").forward(req, resp);
                }
            }
        } else {
            req.setAttribute("RegisterTip", "注册信息不完整，请再次完善！");
            req.getRequestDispatcher("/LoginAndRegister.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
