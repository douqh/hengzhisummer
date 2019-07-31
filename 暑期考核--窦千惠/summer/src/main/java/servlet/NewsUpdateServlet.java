package servlet;

import DB.DBcon;
import entity.news;
import entity.user;
import mapper.NewsMapper;
import mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import util.Md5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;

@WebServlet(urlPatterns = "/NewsUpdateServlet")
public class NewsUpdateServlet extends HttpServlet {
    private static SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        String newsID=req.getParameter("newsID");
        String newsAuthor = req.getParameter("newsAuthor");
        String newsTitle = req.getParameter("newsTitle");
        String newsContent = req.getParameter("newsContent");
        String newsWriteTime = req.getParameter("newsWriteTime");
        Date NewsWriteTime = null;
        try {
            NewsWriteTime = sdf.parse(newsWriteTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        news News = new news();
        News.setNewsContent(newsContent);
        News.setNewsTitle(newsTitle);
        News.setNewsAuthor(newsAuthor);
        News.setNewsWriteTime(NewsWriteTime);
        int NewsID=Integer.parseInt(newsID);
        News.setNewsID(NewsID);

        SqlSession sqlsession = null;
        sqlsession = DBcon.getsqlsession();
        sqlsession.getMapper(NewsMapper.class).UpdateNews(News);
        sqlsession.commit();
        req.setAttribute("Tip", "修改成功");
        req.getRequestDispatcher("NewsShowServlet?flag=1&a=2").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
