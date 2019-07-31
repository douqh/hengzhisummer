package servlet;

import DB.DBcon;
import entity.news;
import entity.notice;
import entity.user;
import mapper.NewsMapper;
import mapper.NoticeMapper;
import mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/NoticeDeleteServlet")
public class NoticeDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String  noticeID =req.getParameter("noticeID");
        String loginName = req.getParameter("username");
        int noticeID1 =Integer.parseInt(noticeID);
        notice Notice = new notice();
        Notice.setNoticeID(noticeID1);

        SqlSession sqlsession = null;
        sqlsession= DBcon.getsqlsession();
        NoticeMapper noticeMapper = sqlsession.getMapper(NoticeMapper.class);
        noticeMapper.DeleteNotice(Notice);
        sqlsession.commit();
        req.setAttribute("tip", "删除成功");
        //返回登陆成功者的用户名
        req.setAttribute("username", loginName);
        req.getRequestDispatcher("NoticeShowServlet?flag=1&a=2").forward(req, resp);

    }
}
