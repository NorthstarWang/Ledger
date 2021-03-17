/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */
package Servlet;
import DAO.MailDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Mail",urlPatterns ="/Mail")
public class Mail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        MailDAO mailDAO = new MailDAO();
        PrintWriter out = response.getWriter();

        String OTP = request.getParameter("Email");
        String code = mailDAO.send(OTP);

        request.getSession().setAttribute("OTP",code);
        out.println(code);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        //获取表单提交的数据
        String OTP = request.getParameter("OTP");
        String currentOTP = request.getSession().getAttribute("OTP").toString();
        if(OTP.equals(currentOTP)){
            request.getSession().removeAttribute("OTP");
            out.println(0);
        }else{
            out.println(1);
        }

    }
}
