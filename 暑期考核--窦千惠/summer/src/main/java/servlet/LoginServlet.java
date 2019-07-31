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

@WebServlet(urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        //实现登陆功能

        String loginUsername = req.getParameter("username");
        String LoginPassword = req.getParameter("password");
        String LoginCode = req.getParameter("code");
        String iCode = (String) req.getSession().getAttribute("picCode");
        if (!iCode.equals(LoginCode)) {
            req.setAttribute("LoginTip", "验证码有误");
            req.getRequestDispatcher("LoginAndRegister.jsp").forward(req, resp);
            return;
        } else {
            SqlSession sqlsession = null;
            sqlsession = DBcon.getsqlsession();
            user user1 = new user();
            user1.setUsername(loginUsername);
            user1.setPassword(LoginPassword);
            user user2 = sqlsession.getMapper(UserMapper.class).login(user1);

            if (user2 != null) {
                if (LoginPassword.equals(user2.getPassword())) {

                    //获取并且传递登陆者的信息
                    req.getSession().setAttribute("studentID",user2.getStudentID());
                    req.getSession().setAttribute("username",user2.getUsername());
                    req.getSession().setAttribute("age",user2.getAge());
                    req.getSession().setAttribute("email",user2.getEmail());

                    int a=5;
                    switch (a) {
                        case 1: {
                            req.getRequestDispatcher("NewsShowServlet?flag=1&a=2").forward(req, resp);
                            break;
                        }
                        case 2: {
                            req.getRequestDispatcher("NoticeShowServlet?flag=1&a=2").forward(req, resp);
                            break;
                        }
                        case 3: {
                            req.getRequestDispatcher("ShowUserServlet?flag=1").forward(req, resp);
                            break;
                        }
                        case 4: {//尾页
                            req.getRequestDispatcher("SortShowServlet").forward(req, resp);
                            break;
                        }
                        case 5: {//尾页
                            req.getRequestDispatcher("PersonMesShow.jsp").forward(req, resp);
                            break;
                        }
                        default:{System.out.println("传参有误");}
                    }
                } else {
                    req.setAttribute("LoginTip", "密码错误,请重新输入");
                    req.getRequestDispatcher("LoginAndRegister.jsp").forward(req, resp);
                }
            } else {
                req.setAttribute("LoginTip", "该用户不存在！");
                req.getRequestDispatcher("LoginAndRegister.jsp").forward(req, resp);
            }
        }

    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
