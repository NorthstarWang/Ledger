/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */
package Servlet;

import DAO.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Login", urlPatterns = "/Login")
public class Login extends HttpServlet {
    UserDAO userDAO = new UserDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String Username = request.getParameter("username");
        String Password = request.getParameter("password");
        String ID = userDAO.SelectUserInfo(Username,"ID");

        if(userDAO.SelectUser(Username,Password)){
            request.getSession().setAttribute("UserID",ID);
            response.sendRedirect("index.jsp");
        }else{
            request.getSession().setAttribute("LoginStatus","Failure");
            response.sendRedirect("Web/User/Login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
