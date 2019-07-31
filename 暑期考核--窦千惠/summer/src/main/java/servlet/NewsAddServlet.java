package servlet;

import DB.DBcon;
import entity.news;
import entity.notice;
import entity.user;
import mapper.NewsMapper;
import mapper.NoticeMapper;
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

@WebServlet(urlPatterns = "/NewsAddServlet")
public class NewsAddServlet extends HttpServlet {
    private static SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String newsTitle = req.getParameter("newsTitle");
        String newsAuthor = req.getParameter("newsAuthor");
        String newsContent = req.getParameter("newsContent");
        String newsWriteTime = req.getParameter("newsWriteTime");
        String newsAlterTime = req.getParameter("newsAlterTime");
        String newsSortID=req.getParameter("newsSortID");
        System.out.println(newsTitle+"______________"+newsAuthor+"-----"+newsSortID+"____"+newsWriteTime);
        int NewsSortID=Integer.parseInt(newsSortID);
        Date NewsWriteTime = null;
        Date NewsAlterTime = null;
        try {
            NewsWriteTime = sdf.parse(newsWriteTime);
            NewsAlterTime=sdf.parse(newsAlterTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        news News=new news();
        News.setNewsTitle(newsTitle);
        News.setNewsAuthor(newsAuthor);
        News.setNewsContent(newsContent);
        News.setNewsWriteTime(NewsWriteTime);
        News.setNewsAlterTime(NewsAlterTime);
        News.setNewsSortID(NewsSortID);
        SqlSession sqlsession = null;
        sqlsession = DBcon.getsqlsession();
        sqlsession.getMapper(NewsMapper.class).AddNews(News);
        sqlsession.commit();
        req.setAttribute("tip", "添加成功");
        req.getRequestDispatcher("NewsShowServlet?flag=1&a=2").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
