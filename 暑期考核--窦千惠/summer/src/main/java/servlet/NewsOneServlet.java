package servlet;

import DB.DBcon;
import entity.news;
import mapper.NewsMapper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/NewsOneServlet")
public class NewsOneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String newsID=req.getParameter("newsID");
        int NewsID=Integer.parseInt(newsID);
        news News=new news();
        News.setNewsID(NewsID);
        SqlSession sqlsession = null;
        sqlsession= DBcon.getsqlsession();
        NewsMapper newsMapper = sqlsession.getMapper(NewsMapper.class);
        news news1=newsMapper.OneNews(News);
        req.setAttribute("news",news1);
        req.getRequestDispatcher("NewsShow.jsp");
    }
}
