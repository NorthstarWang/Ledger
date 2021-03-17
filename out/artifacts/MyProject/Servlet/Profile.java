package Servlet;

import DAO.UserDAO;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */

@WebServlet(name = "Profile",urlPatterns = "/Profile")
public class Profile extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        UserDAO userDAO = new UserDAO();
        PrintWriter out = response.getWriter();
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding("UTF-8");
        try {
            List<FileItem> fileItems= upload.parseRequest(request);
            String AP = null;
            Boolean flag=false;

            Map param = new HashMap();
            for (FileItem file : fileItems) {
                    if (file.isFormField()) {
                        param.put(file.getFieldName(), file.getString("utf-8"));

                    } else {
                        // 是文件
                        //图片命名
                        try{
                            AP = file.getName();
                            String AbsolutePath = request.getServletContext().getRealPath("assets/media/users/");
                            File img = new File(AbsolutePath+AP);
                            file.write(img);
                            flag = true;
                        }catch (Exception e){
                            flag = false;
                        }

                    }
            }
            int ID = Integer.parseInt(request.getParameter("UserID"));
            String FN = param.get("FName").toString();
            String LN = param.get("LName").toString();
            String Desc = param.get("editor").toString();
            Long HP = Long.parseLong((String) param.get("HP"));
            userDAO.UpdateUserInfoLong(ID,"HP",HP);
            userDAO.UpdateUserInfoString(ID,"FName",FN);
            userDAO.UpdateUserInfoString(ID,"LName",LN);
            userDAO.UpdateUserInfoString(ID,"Description",Desc);
            if(flag == true){
                userDAO.UpdateUserInfoString(ID,"Icon",AP);
            }

            out.println(0);
            response.sendRedirect("./Web/User/Profile.jsp?UserID="+ID);
        }catch (Exception e){
            out.println(1);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
