package Servlet;

import DAO.DataTableDAO;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */

@WebServlet(name = "TreeView",urlPatterns = "/TreeView")
public class TreeView extends HttpServlet {
    DataTableDAO dataTableDAO = new DataTableDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/json; charset=UTF-8");
        PrintWriter out = response.getWriter();
        int UserID = Integer.parseInt(request.getParameter("UserID"));
        String TableName = request.getParameter("Name");
        String data = dataTableDAO.SelectDataTableData(UserID,TableName);
        if(data!=null){
            JsonArray datas = new JsonParser().parse(data).getAsJsonArray();
            out.println(datas);
        }else{
            out.println(0);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        int UserID = Integer.parseInt(request.getParameter("UserID"));
        String category_list = dataTableDAO.SelectCategory(UserID);
        String Array[] = category_list.split(",");//category list in array
        JsonArray jsonArray = new JsonArray();

        for (String category:Array) {
            String[] datatables = dataTableDAO.SelectDataTableByCategory(UserID,category);
            if(datatables!=null){
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("text",category);
                JsonArray DT = new JsonArray();
                for (String datatable:datatables) {
                    JsonObject child_info = new JsonObject();
                    child_info.addProperty("text",datatable);
                    child_info.addProperty("icon"," flaticon2-file kt-font-info");
                    DT.add(child_info);
                }
                jsonObject.add("children",DT);
                jsonArray.add(jsonObject);
            }else{
                jsonArray.add(category);
            }
        }

        out.println(jsonArray);
    }
}
