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

@WebServlet(name = "DataTable",urlPatterns ="/DataTable")
public class DataTable extends HttpServlet {

    DataTableDAO dataTableDAO = new DataTableDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String[] Array = request.getParameterValues("kt_select2");
        String unit = request.getParameter("kt_select2_unit");
        String Name = request.getParameter("Title");
        String Category = request.getParameter("CategorySelect");
        Integer UserID = Integer.parseInt(request.getParameter("UserID"));
        String headers = "";
        for (String header:Array) {
            headers+=header+",";
        }
        headers = headers.substring(0, headers.length() - 1);
        int result = dataTableDAO.InsertDataTable(UserID,Name,Category,headers,unit);
        if(result==0){
            out.println(0);//success
        }else if(result==1){
            out.println(1);
        }else if(result==2){
            out.println(2);//duplicate name
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        int ID = Integer.parseInt(request.getParameter("ID"));
        int result = dataTableDAO.UpdateCategory(ID,name);
        if(result==0){
            out.println(0);//success
        }else if(result==1){
            out.println(1);//failure
        }else{
            out.println(2);//duplicate name
        }
    }


}
