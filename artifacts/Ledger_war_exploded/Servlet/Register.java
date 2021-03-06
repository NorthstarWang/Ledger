/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */
package Servlet;

import DAO.UserDAO;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name="/Register",urlPatterns = ("/Register"))
public class Register extends HttpServlet {

    UserDAO userDAO = new UserDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding("UTF-8");
        try {
            List<FileItem> fileItems = upload.parseRequest(request);

            Map param = new HashMap();
            for (FileItem file : fileItems) {
                if (file.isFormField()) {
                    param.put(file.getFieldName(), file.getString("utf-8"));

                }
            }
            String Username = param.get("Username").toString();
            String Password = param.get("Password").toString();
            String FN = param.get("FN").toString();
            String LN = param.get("LN").toString();
            String Gender = param.get("radioGender").toString();
            String Email = param.get("Email").toString();
            String Description = param.get("Description").toString();

            if(Password.isEmpty() || FN.isEmpty() || LN.isEmpty() || Email.isEmpty() || Gender.isEmpty()){
                out.println(1);
            }else{
                if (userDAO.InsertUser(Username, Password, FN, LN, Gender, Email, Description)) {
                    out.println(0);
                } else {
                    out.println(1);
                }
            }
    }catch (Exception e) {
        out.println(1);
    }
        }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        //???????????????????????????
        String username = request.getParameter("username");

        //???????????????service??????????????????
        UserDAO userDAO = new UserDAO();
        Boolean flag = userDAO.VerifyUsername(username);

        //AJAX??????
        if(flag){
            //????????????true????????????????????????????????????????????????,??????0
            out.println(0);
        }else{
            //?????????????????????????????????1
            out.println(1);
        }
    }
}
