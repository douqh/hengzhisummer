package servlet;

import DB.DBcon;
import mapper.NewsMapper;
import mapper.SortMapper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/SortShowServlet")
public class SortShowServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        SqlSession sqlsession = null;
        sqlsession= DBcon.getsqlsession();
        SortMapper sortMapper = sqlsession.getMapper(SortMapper.class);
        List SortList=sortMapper.AllSort();

        req.getSession().setAttribute("SortList", SortList);
        req.getRequestDispatcher("SortManage.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
