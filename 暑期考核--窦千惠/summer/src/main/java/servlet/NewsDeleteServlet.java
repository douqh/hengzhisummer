package servlet;

import DB.DBcon;
import entity.news;
import entity.user;
import mapper.NewsMapper;
import mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/NewsDeleteServlet")
public class NewsDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String  newsID =req.getParameter("newsID");
        String loginName = req.getParameter("username");
        int newsID1 =Integer.parseInt(newsID);
        news News =new news();
        News.setNewsID(newsID1);

        SqlSession sqlsession = null;
        sqlsession= DBcon.getsqlsession();
        NewsMapper newsMapper = sqlsession.getMapper(NewsMapper.class);
        newsMapper.DeleteNews(News);
        sqlsession.commit();
        req.setAttribute("tip", "删除成功");
        //返回登陆成功者的用户名
        req.setAttribute("username", loginName);
        req.getRequestDispatcher("NewsShowServlet?flag=1&a=2").forward(req, resp);

    }
}
