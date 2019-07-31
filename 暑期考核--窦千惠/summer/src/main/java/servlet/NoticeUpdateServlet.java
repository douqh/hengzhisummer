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
import java.util.SimpleTimeZone;

@WebServlet(urlPatterns = "/NoticeUpdateServlet")
public class NoticeUpdateServlet extends HttpServlet {
    private static SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        String noticeAuthor = req.getParameter("noticeAuthor");
        String noticeTitle = req.getParameter("noticeTitle");
        String noticeContent = req.getParameter("noticeContent");
        String noticeWriteTime = req.getParameter("noticeWriteTime");
        String noticeSortID=req.getParameter("noticeSortID");
        int NoticeSortID=Integer.parseInt(noticeSortID);
        Date NoticeWriteTime = null;
        try {
            NoticeWriteTime = sdf.parse(noticeWriteTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        notice Notice = new notice();
        Notice.setNoticeContent(noticeContent);
        Notice.setNoticeTitle(noticeTitle);
        Notice.setNoticeAuthor(noticeAuthor);
        Notice.setNoticeWriteTime(NoticeWriteTime);
        Notice.setNoticeSortID(NoticeSortID);

        SqlSession sqlsession = null;
        sqlsession = DBcon.getsqlsession();
        sqlsession.getMapper(NoticeMapper.class).UpdateNotice(Notice);
        sqlsession.commit();
        req.getSession().setAttribute("Tip", "修改成功");
        req.getRequestDispatcher("NoticeShowServlet?flag=1&a=2").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
