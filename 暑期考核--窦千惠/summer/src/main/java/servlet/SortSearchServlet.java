package servlet;

import DB.DBcon;
import mapper.NewsMapper;
import mapper.NoticeMapper;
import mapper.SortMapper;
import net.sf.json.JSONArray;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/SortSearchServlet")
public class SortSearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        String searchContent = req.getParameter("search");
        System.out.println(searchContent);

        SqlSession sqlsession = null;
        sqlsession = DBcon.getsqlsession();
        SortMapper sortMapper = sqlsession.getMapper(SortMapper.class);
        sqlsession.commit();
        List NewsList = sortMapper.SearchNewsSort(searchContent);
        List NoticeList = sortMapper.SearchNoticeSort(searchContent);
        System.out.println(NoticeList);
        System.out.println(NewsList);
        System.out.println(JSONArray.fromObject(NewsList).toString());
        resp.getWriter().write(JSONArray.fromObject(NewsList).toString());
        resp.getWriter().write(JSONArray.fromObject(NoticeList).toString());

    }
}