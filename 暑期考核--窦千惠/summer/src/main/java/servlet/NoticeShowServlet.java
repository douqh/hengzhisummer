package servlet;

import DB.DBcon;
import entity.news;
import entity.notice;
import entity.page;
import entity.user;
import mapper.NewsMapper;
import mapper.NoticeMapper;
import mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import util.TotalPagesCal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/NoticeShowServlet")
public class NoticeShowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        //分页显示新闻
        int PageNo=1;//当前页面为1
        int PageSize=20;//每页显示的信息数
        int TotalPages=0;//初始化总页数
        SqlSession sqlsession = null;
        sqlsession= DBcon.getsqlsession();
        NoticeMapper noticeMapper = sqlsession.getMapper(NoticeMapper.class);
        List NoticeList=noticeMapper.AllNotice();//获取全部通知信息
        int TotalRecord=NoticeList.size();//总页数
        int TotalPages1=new TotalPagesCal().calculateTP(PageSize,TotalRecord);
        //页面处理
        int flag;
        String Flag =req.getParameter("flag");
        flag = Integer.parseInt(Flag);//获取a标签参数
        switch (flag) {
            case 1: {//首页
                PageNo = 1;
                break;
            }
            case 2: {//上一页
                PageNo = Integer.parseInt(req.getParameter("pno"))-1;
                break;
            }
            case 3: {//下一页
                PageNo= Integer.parseInt(req.getParameter("pno"))+1;
                break;
            }
            case 4: {//尾页
                PageNo = TotalPages1;
                break;
            }
            case 5: {//跳转到某一页
                String c1=req.getParameter("pages");
                PageNo = Integer.parseInt(c1);
                break;
            }
            default:{System.out.println("传参有误");}
        }
        //分页传值
        int StartRecord=(PageNo-1)*20;
        page Page=new page();
        Page.setPageNo(PageNo);
        Page.setPageSize(PageSize);
        Page.setStartRecord(StartRecord);
        List<notice> pageNews1 =noticeMapper.PageNotice(Page); //调用FenYe方法传值
        req.setAttribute("APage",pageNews1);
        req.setAttribute("pagenow", PageNo);
        req.setAttribute("totalpages", TotalPages1);
        //跳转回前台
        int a;
        String a1 =req.getParameter("a");
        a = Integer.parseInt(a1);
        switch (a) {
            case 1: {
                req.getRequestDispatcher(req.getContextPath() + "AllNotice.jsp").forward(req, resp);
                break;
            }
            case 2: {
                req.getRequestDispatcher("NoticeManage.jsp").forward(req, resp);
                break;
            }
            default:{System.out.println("传参有误");}
        }

    }
}
