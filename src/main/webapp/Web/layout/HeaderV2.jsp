    <%@ page import="DAO.UserDAO" %><%--
  Created by IntelliJ IDEA.
  User: Wang Yang
  Date: 2020/3/8
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <div class="kt-header__top">
    <div class="kt-container ">

    <!-- begin:: Brand -->
    <div class="kt-header__brand   kt-grid__item" id="kt_header_brand">
    <div class="kt-header__brand-logo">
    <a href="index.jsp">
    <img alt="Logo" src="assets/media/logos/index_logo.png" class="kt-header__brand-logo-default" />
    <img alt="Logo" src="assets/media/logos/index_logo.png" class="kt-header__brand-logo-sticky" />
    </a>
    </div>
    </div>

    <!-- end:: Brand -->

    <!-- begin:: Topbar -->
    <div class="kt-header__topbar">

        <%
        if(session.getAttribute("UserID")==null){%>
    <div class="kt-header__topbar-item">
    <div class="kt-header__topbar-wrapper"><a href="Web/User/Login.jsp">
    <button type="button" class="btn btn-light btn-elevate-hover btn-pill"><i class="la la-sign-in"></i>Login</button></a>
    </div>
    </div>

    <div class="kt-header__topbar-item">
    <div class="kt-header__topbar-wrapper"><a href="Web/User/Register.jsp">
    <button type="button" class="btn btn-light btn-elevate-hover btn-pill"><i class="la la-user"></i>Sign Up</button></a>
    </div>
    </div>
<%}else{
            String usr = session.getAttribute("UserID").toString();
            UserDAO userDAO = new UserDAO();
            String usrname = userDAO.SelectUserInfoByID(usr,"Username");
            String icon = userDAO.SelectUserIcon(usrname);
%>
    <!--begin: User -->
    <div class="kt-header__topbar-item kt-header__topbar-item--user">
    <div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="20px,10px">
    <img alt="Pic" src="assets/media/users/<%=icon%>" />
    </div>
    <div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-md">
    <div class="kt-user-card-v4 kt-user-card-v4--skin-light kt-notification-item-padding-x">
    <div class="kt-user-card-v4__avatar">

    <img class="kt-rounded-" alt="Pic" src="assets/media/users/<%=icon%>" />

    <span class="kt-badge kt-badge--username kt-badge--unified-success kt-badge--lg kt-badge--rounded kt-badge--bold kt-hidden">S</span>
    </div>
    <div class="kt-user-card-v4__name">

    </div>
    </div>
    <ul class="kt-nav kt-margin-b-10">
    <li class="kt-nav__item">
    <a href="Web/User/Profile.jsp?UserID=<%=usr%>" class="kt-nav__link">
    <span class="kt-nav__link-icon"><i class="flaticon2-schedule"></i></span>
    <span class="kt-nav__link-text">My Profile</span>
    </a>
    </li>
    <li class="kt-nav__separator kt-nav__separator--fit"></li>
    <li class="kt-nav__custom kt-space-between">
    <a href="Controller/IndexController.jsp?out=true" target="_top" class="btn btn-label-brand btn-upper btn-sm btn-bold">Sign Out</a>
    </li>
    </ul>
    </div>
    </div>
    <!--end: User -->
    <%}%>
    </div>

    <!-- end:: Topbar -->
    </div>
    </div>
