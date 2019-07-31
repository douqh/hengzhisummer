package servlet;

import DB.DBcon;
import entity.notice;
import entity.sort;
import mapper.NewsMapper;
import mapper.SortMapper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(urlPatterns = "/SortAddServlet")
public class SortAddServlet extends HttpServlet {
    private static SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

//        String sortID=req.getParameter("sortID");
        String sortName=req.getParameter("sortName");
        String addTime=req.getParameter("addTime");
//        int SortID=Integer.parseInt(sortID);
        Date AddTime = null;
        try {
            AddTime=sdf.parse(addTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        sort Sort=new sort();
//        Sort.setSortID(SortID);
        Sort.setAddTime(AddTime);
        Sort.setSortName(sortName);
        SqlSession sqlsession = null;
        sqlsession = DBcon.getsqlsession();
        sqlsession.getMapper(SortMapper.class).AddSort(Sort);
        sqlsession.commit();
        req.setAttribute("Tip", "添加成功");
        req.getRequestDispatcher("SortShowServlet").forward(req, resp);

    }
}
