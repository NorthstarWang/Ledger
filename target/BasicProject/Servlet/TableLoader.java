/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */
package Servlet;

import DAO.DataTableDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TableLoader",urlPatterns = "/TableLoader")
public class TableLoader extends HttpServlet {
    DataTableDAO dataTableDAO = new DataTableDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Get Money unit for footer callback
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        String TableName = request.getParameter("Name");
        int UserID = Integer.parseInt(request.getParameter("UserID"));
        String unit = dataTableDAO.SelectDatatableUnit(UserID,TableName);
        out.println(unit);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        String text = request.getParameter("text");
        int UserID = Integer.parseInt(request.getParameter("UserID"));
        String headers = dataTableDAO.SelectDataTable(UserID,text,"Header");
        if(headers!=null){
            out.println(headers);
        }else{
            out.println(0);
        }

    }
}
