package servlet;

import DB.DBcon;
import entity.page;
import entity.user;
import mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import util.TotalPagesCal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/ShowUserServlet")
public class ShowUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("test/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        //分页显示用户信息
        int PageNo=1;//当前页面为1
        int PageSize=3;//每页显示的信息数
        int TotalPages=0;//初始化总页数
        SqlSession sqlsession = null;
        sqlsession= DBcon.getsqlsession();
        UserMapper userMapper = sqlsession.getMapper(UserMapper.class);
        List<user> users=userMapper.AllUser();//获取全部人员信息
        int TotalRecord=users.size();//总页数
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
        int StartRecord=(PageNo-1)*3;
        page Page=new page();
        Page.setPageNo(PageNo);
        Page.setPageSize(PageSize);
        Page.setStartRecord(StartRecord);
        List<user> page =userMapper.PageUser(Page); //调用FenYe方法传值

        req.getSession().setAttribute("username",req.getAttribute("username"));
        req.getSession().setAttribute("APage",page);
        req.getSession().setAttribute("pagenow", PageNo);
        req.getSession().setAttribute("totalpages", TotalPages1);
        //跳转回前台
        req.getRequestDispatcher(req.getContextPath()+"AdminManage.jsp").forward(req, resp);



    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
