package servlet;

import DB.DBcon;
import entity.news;
import entity.notice;
import entity.sort;
import entity.user;
import mapper.NewsMapper;
import mapper.NoticeMapper;
import mapper.SortMapper;
import mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/SortDeleteServlet")
public class SortDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String  sortID =req.getParameter("sortID");
        String loginName = req.getParameter("username");
        int SortID=Integer.parseInt(sortID);
        sort Sort=new sort();
        Sort.setSortID(SortID);

        SqlSession sqlsession = null;
        sqlsession= DBcon.getsqlsession();
        SortMapper sortMapper = sqlsession.getMapper(SortMapper.class);
        sortMapper.DeleteSort(Sort);
        sqlsession.commit();
        req.setAttribute("tip", "删除成功");
        //返回登陆成功者的用户名
        req.setAttribute("username", loginName);
        req.getRequestDispatcher("SortShowServlet").forward(req, resp);

    }
}
