package servlet;

import DB.DBcon;
import mapper.NewsMapper;
import mapper.NoticeMapper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/IndexServlet")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        SqlSession sqlsession = null;
        sqlsession= DBcon.getsqlsession();
        NewsMapper newsMapper = sqlsession.getMapper(NewsMapper.class);
        List NewsList=newsMapper.AllNews();//获取全部新闻信息
        NoticeMapper noticeMapper = sqlsession.getMapper(NoticeMapper.class);
        List NoticeList=noticeMapper.AllNotice();//获取全部通知信息
        req.getSession().setAttribute("NewsList",NewsList);
        req.getSession().setAttribute("NoticeList",NoticeList);
        req.getRequestDispatcher(req.getContextPath() + "index.jsp").forward(req, resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
