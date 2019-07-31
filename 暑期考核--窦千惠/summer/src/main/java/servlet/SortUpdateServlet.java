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

@WebServlet(urlPatterns = "/SortUpdateServlet")
public class SortUpdateServlet extends HttpServlet {
    private static SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        String sortName= req.getParameter("sortName");
//        String addTime = req.getParameter("addTime");
//        Date AddTime = null;
//        try {
//            AddTime = sdf.parse(addTime);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }

        sort Sort=new sort();
        Sort.setSortName(sortName);
//        Sort.setAddTime(AddTime);
        SqlSession sqlsession = null;
        sqlsession = DBcon.getsqlsession();
        sqlsession.getMapper(SortMapper.class).UpdateSort(Sort);
        sqlsession.commit();
        req.getSession().setAttribute("Tip", "修改成功");
        req.getRequestDispatcher("SortShowServlet").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
