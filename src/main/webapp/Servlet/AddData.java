/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */
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

@WebServlet(name = "AddData",urlPatterns = "/AddData")
public class AddData extends HttpServlet {
    DataTableDAO dataTableDAO = new DataTableDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json; charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        int UserID = Integer.parseInt(request.getParameter("UserID"));
        String Name = request.getParameter("Name");
        String Headers = dataTableDAO.SelectDataTable(UserID,Name,"Header");
        String Array[] = Headers.split(",");

        String data = dataTableDAO.SelectDataTable(UserID,Name,"Data");
        if(data==null){
            JsonArray array = new JsonArray();
            JsonObject jsonArray = new JsonObject();
            for(String header:Array) {
                String param = request.getParameter(header + "_JsonData").trim();
                if (param == null || param == "") {
                    out.println(1);
                    return;
                }
                jsonArray.addProperty(header, param);
            }
            array.add(jsonArray);
            if(dataTableDAO.UpdateData(UserID,Name,array)==0){
                out.println(0);
            }else{
                out.println(1);
            }
        //if data have not created yet
        }else{
            JsonObject json = new JsonObject();
            JsonArray jsonArray = new JsonParser().parse(data).getAsJsonArray();
            for(String header:Array){
                    String param = request.getParameter(header+"_JsonData").trim();
                    if(param==null||param==""){
                        out.println(1);
                        return;
                    }
                    json.addProperty(header,param);

            }
            jsonArray.add(json);
            if(dataTableDAO.UpdateData(UserID,Name,jsonArray)==0){
                out.println(0);
            }else{
                out.println(1);
            }
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
