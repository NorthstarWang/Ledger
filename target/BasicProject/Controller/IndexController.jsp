<%--
  Created by IntelliJ IDEA.
  User: 15276
  Date: 2020/6/20
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Controller | Index</title>
</head>
<body>
<%
    //Sign Out
if(session.getAttribute("UserID")!=null){
    String sign_out = request.getParameter("out");
        if (sign_out.equals("true")){//Sign out clicked
            session.removeAttribute("UserID");
            response.sendRedirect("../index.jsp");
        }
}else{

}
%>
</body>
</html>
