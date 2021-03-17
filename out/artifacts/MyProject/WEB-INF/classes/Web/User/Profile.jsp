<%@ page import="DAO.UserDAO" %><%--
  Created by IntelliJ IDEA.
  User: Wang Yang
  Date: 2020/3/8
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<!-- begin::Head -->
<head>
    <base href="../../">
    <meta charset="utf-8" />
    <title>Profile</title>
    <meta name="description" content="User profile overview">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!--begin::Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">

    <!--end::Fonts -->

    <!--begin::Page Vendors Styles(used by this page) -->
    <link href="assets/plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />

    <!--end::Page Vendors Styles -->

    <!--begin::Global Theme Styles(used by all pages) -->
    <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />

    <!--end::Global Theme Styles -->

    <!--begin::Layout Skins(used by all pages) -->

    <!--end::Layout Skins -->
    <link rel="shortcut icon" href="assets/media/logos/Juncus_title.png" />

    <script src="https://cdn.ckeditor.com/ckeditor5/19.1.1/balloon-block/ckeditor.js"></script>
</head>

<!-- end::Head -->

<!-- begin::Body -->
<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header--minimize-menu kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--transparent kt-page--loading">

<!-- begin::Page loader -->

<!-- end::Page Loader -->

<!-- begin:: Page -->

<!-- begin:: Header Mobile -->
<div id="kt_header_mobile" class="kt-header-mobile  kt-header-mobile--fixed ">
    <div class="kt-header-mobile__logo">
        <a href="index.html">
            <img alt="Logo" src="assets/media/logos/index_logo.png" />
        </a>
    </div>
    <div class="kt-header-mobile__toolbar">
        <button class="kt-header-mobile__toolbar-toggler" id="kt_header_mobile_toggler"><span></span></button>
        <button class="kt-header-mobile__toolbar-topbar-toggler" id="kt_header_mobile_topbar_toggler"><i class="flaticon-more"></i></button>
    </div>
</div>

<!-- end:: Header Mobile -->
<div class="kt-grid kt-grid--hor kt-grid--root">
    <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">
        <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">

            <!-- begin:: Header -->
            <div id="kt_header" class="kt-header kt-grid__item  kt-header--fixed " data-ktheader-minimize="on" style="background-image: url(assets/media/layout/header-bg-demo3.jpg)">
                <jsp:include page="../layout/HeaderV2.jsp" flush="true"/>
                <%@include file="../layout/HeaderV1.jsp"%>
            </div>
            <!-- end:: Header -->
<%
        String usr = request.getParameter("UserID");
        UserDAO userDAO = new UserDAO();
        String usrname = userDAO.SelectUserInfoByID(usr,"Username");
        String usr_icon = userDAO.SelectUserIcon(usrname);
        String usr_mail = userDAO.SelectUserInfo(usrname,"Email");
        String HP;
        String Desc;
        String currentUser = session.getAttribute("UserID").toString();
        try{
            HP = userDAO.SelectUserInfo(usrname,"HP");
        }catch (Exception e){
            HP = "";
        }

    try{
        Desc = userDAO.SelectUserInfo(currentUser,"Description");
    }catch (Exception e){
        Desc="";
    }
%>
            <div class="kt-container kt-container--fluid kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-grid--stretch">
                <div class="kt-body kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-grid--stretch" id="kt_body">
                    <div class="kt-content kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">



                                <%

                                if(currentUser.equals(request.getParameter("UserID"))){
                                %>
                        <!-- begin:: Content -->
                                <div class="kt-container kt-container--fluid  kt-grid__item kt-grid__item--fluid">

                                    <!--begin::Portlet-->
                                    <div class="kt-portlet kt-widget kt-widget--fit kt-widget--general-3">
                                        <div class="kt-portlet__body">
                                            <div class="kt-widget__top">
                                                <div class="kt-media kt-media--xl kt-media--circle">
                                                    <img src="assets/media/users/<%=usr_icon%>" alt="image">
                                                </div>
                                                <div class="kt-widget__wrapper">
                                                    <div class="kt-widget__label">
                                                <span class="kt-widget__title">
                                                    <%=usrname%>
                                                </span>
                                                        <span class="kt-widget__desc">
                                                            <%=userDAO.SelectUserInfo(usrname,"Role")%>
														</span>

                                                    </div>
                                                    <div class="kt-widget__links">
                                                        <div class="kt-widget__cont">
                                                            <div class="kt-widget__link">
                                                                <i class="flaticon2-send  kt-font-success"></i><%=usr_mail%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                <div class="kt-portlet__foot kt-portlet__foot--fit">
                                    <div class="kt-widget__nav ">
                                        <ul class="nav nav-tabs nav-tabs-space-xl nav-tabs-line nav-tabs-clear nav-tabs-bold nav-tabs-line-3x nav-tabs-line-brand kt-portlet__space-x" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#kt_tabs_1_0" role="tab">
                                                    <i class="flaticon2-cardiogram"></i> Overview
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#kt_tabs_1_1" role="tab">
                                                    <i class="flaticon2-calendar-3"></i> Profile
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#kt_tabs_1_2" role="tab">
                                                    <i class="flaticon2-protected"></i> Account
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#kt_tabs_1_3" role="tab">
                                                    <i class="flaticon2-lock"></i> Change Password
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <!--end::Portlet-->
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="kt_tabs_1_0" role="tabpanel">

                                    <!--begin::Row-->
                                    <div class="row">
                                        <div class="col-lg-6 col-xl-4  order-lg-1 order-xl-1">

                                            <!--begin::Portlet-->
                                            <div class="kt-portlet kt-portlet--height-fluid">
                                                <div class="kt-portlet__head">
                                                    <div class="kt-portlet__head-label">
                                                        <h3 class="kt-portlet__head-title">Latest Uploads</h3>
                                                    </div>
                                                    <div class="kt-portlet__head-toolbar">
                                                        <div class="kt-portlet__head-actions">
                                                            <a href="#" class="btn btn-default btn-upper btn-sm btn-bold">All FILES</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="kt-portlet__body kt-portlet__body--fit kt-portlet__body--fluid">
                                                    <div class="kt-widget-7">
                                                        <div class="kt-widget-7__items">
                                                            <div class="kt-widget-7__item">
                                                                <div class="kt-widget-7__item-pic">
                                                                    <img src="assets/media/files/doc.svg" alt="" />
                                                                </div>
                                                                <div class="kt-widget-7__item-info">
                                                                    <a href="#" class="kt-widget-7__item-title">
                                                                        Keeg Design Reqs
                                                                    </a>
                                                                    <div class="kt-widget-7__item-desc">
                                                                        95 MB
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-7__item-toolbar">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <ul class="kt-nav">
                                                                                <li class="kt-nav__section kt-nav__section--first">
                                                                                    <span class="kt-nav__section-text">EXPORT TOOLS</span>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-eye"></i>
                                                                                        <span class="kt-nav__link-text">View</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-comment-o"></i>
                                                                                        <span class="kt-nav__link-text">Coments</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-copy"></i>
                                                                                        <span class="kt-nav__link-text">Copy</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-file-excel-o"></i>
                                                                                        <span class="kt-nav__link-text">Excel</span>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-7__item">
                                                                <div class="kt-widget-7__item-pic">
                                                                    <img src="assets/media/files/pdf.svg" alt="" />
                                                                </div>
                                                                <div class="kt-widget-7__item-info">
                                                                    <a href="#" class="kt-widget-7__item-title">
                                                                        S.E.R Agreement
                                                                    </a>
                                                                    <div class="kt-widget-7__item-desc">
                                                                        805 MB
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-7__item-toolbar">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <ul class="kt-nav">
                                                                                <li class="kt-nav__section kt-nav__section--first">
                                                                                    <span class="kt-nav__section-text">EXPORT TOOLS</span>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-eye"></i>
                                                                                        <span class="kt-nav__link-text">View</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-comment-o"></i>
                                                                                        <span class="kt-nav__link-text">Coments</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-copy"></i>
                                                                                        <span class="kt-nav__link-text">Copy</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-file-excel-o"></i>
                                                                                        <span class="kt-nav__link-text">Excel</span>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-7__item">
                                                                <div class="kt-widget-7__item-pic">
                                                                    <img src="assets/media/files/jpg.svg" alt="" />
                                                                </div>
                                                                <div class="kt-widget-7__item-info">
                                                                    <a href="#" class="kt-widget-7__item-title">
                                                                        FlyMore Screenshot
                                                                    </a>
                                                                    <div class="kt-widget-7__item-desc">
                                                                        4 MB
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-7__item-toolbar">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <ul class="kt-nav">
                                                                                <li class="kt-nav__section kt-nav__section--first">
                                                                                    <span class="kt-nav__section-text">EXPORT TOOLS</span>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-eye"></i>
                                                                                        <span class="kt-nav__link-text">View</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-comment-o"></i>
                                                                                        <span class="kt-nav__link-text">Coments</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-copy"></i>
                                                                                        <span class="kt-nav__link-text">Copy</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-file-excel-o"></i>
                                                                                        <span class="kt-nav__link-text">Excel</span>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-7__item">
                                                                <div class="kt-widget-7__item-pic">
                                                                    <img src="assets/media/files/zip.svg" alt="" />
                                                                </div>
                                                                <div class="kt-widget-7__item-info">
                                                                    <a href="#" class="kt-widget-7__item-title">
                                                                        ST.11 Dacuments
                                                                    </a>
                                                                    <div class="kt-widget-7__item-desc">
                                                                        Unknown
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-7__item-toolbar">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <ul class="kt-nav">
                                                                                <li class="kt-nav__section kt-nav__section--first">
                                                                                    <span class="kt-nav__section-text">EXPORT TOOLS</span>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-eye"></i>
                                                                                        <span class="kt-nav__link-text">View</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-comment-o"></i>
                                                                                        <span class="kt-nav__link-text">Coments</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-copy"></i>
                                                                                        <span class="kt-nav__link-text">Copy</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-file-excel-o"></i>
                                                                                        <span class="kt-nav__link-text">Excel</span>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-7__item">
                                                                <div class="kt-widget-7__item-pic">
                                                                    <img src="assets/media/files/xml.svg" alt="" />
                                                                </div>
                                                                <div class="kt-widget-7__item-info">
                                                                    <a href="#" class="kt-widget-7__item-title">
                                                                        XML AOL Data Fetchin
                                                                    </a>
                                                                    <div class="kt-widget-7__item-desc">
                                                                        4 MB
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-7__item-toolbar">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <ul class="kt-nav">
                                                                                <li class="kt-nav__section kt-nav__section--first">
                                                                                    <span class="kt-nav__section-text">EXPORT TOOLS</span>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-eye"></i>
                                                                                        <span class="kt-nav__link-text">View</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-comment-o"></i>
                                                                                        <span class="kt-nav__link-text">Coments</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-copy"></i>
                                                                                        <span class="kt-nav__link-text">Copy</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-file-excel-o"></i>
                                                                                        <span class="kt-nav__link-text">Excel</span>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="kt-widget-7__foot">
                                                            <img src="assets/media/misc/clouds.png" alt="" />
                                                            <div class="kt-widget-7__upload">
                                                                <a href="#"><i class="flaticon-upload"></i></a>
                                                                <span>Drag files here</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--end::Portlet-->
                                        </div>
                                        <div class="col-lg-12 col-xl-8  order-lg-1 order-xl-1">

                                            <!--begin::Portlet-->
                                            <div class="kt-portlet kt-portlet--height-fluid kt-portlet--tabs">
                                                <div class="kt-portlet__head">
                                                    <div class="kt-portlet__head-label">
                                                        <h3 class="kt-portlet__head-title">
                                                            Latest Tasks
                                                        </h3>
                                                    </div>
                                                    <div class="kt-portlet__head-toolbar">
                                                        <ul class="nav nav-tabs nav-tabs-line nav-tabs-line-brand nav-tabs-bold" role="tablist">
                                                            <li class="nav-item">
                                                                <a class="nav-link active show" data-toggle="tab" href="#kt_portlet_tabs_1_1_content" role="tab" aria-selected="false">
                                                                    Today
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="kt-portlet__body">
                                                    <div class="tab-content">
                                                        <div class="tab-pane fade active show" id="kt_portlet_tabs_1_1_content" role="tabpanel">
                                                            <div class="kt-widget-5">
                                                                <div class="kt-widget-5__item kt-widget-5__item--info">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            Management meeting
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            09:30 AM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-5__item kt-widget-5__item--danger">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            Replace datatables rows color
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            12:00 AM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-5__item kt-widget-5__item--brand">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            Export Navitare booking table
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            01:20 PM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-5__item kt-widget-5__item--success">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            NYCS internal discussion
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            03: 00 PM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-5__item kt-widget-5__item--danger">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            Project Launch
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            11: 00 AM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-5__item kt-widget-5__item--success">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            Server maintenance
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            4: 30 PM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--end::Portlet-->
                                        </div>
                                    </div>

                                    <!--end::Row-->
                                </div>

                                <div class="tab-pane fade" id="kt_tabs_1_1" role="tabpanel">

                                    <!--begin::Row-->
                                    <div class="row">
                                        <div class="col-lg-12 col-xl-12  order-lg-1 order-xl-1">
                                            <div class="kt-grid__item kt-grid__item--fluid kt-app__content">
                                                <div class="kt-portlet">
                                                    <div class="kt-portlet__head">
                                                        <div class="kt-portlet__head-label">
                                                            <h3 class="kt-portlet__head-title">Personal Information <small>update your personal informaiton</small></h3>
                                                        </div>
                                                    </div>
                                                    <form class="kt-form kt-form--label-right" id="personal_info"  name="personal_info" action="Profile?UserID=<%=usr%>" method="post">
                                                        <div class="kt-portlet__body">
                                                            <div class="kt-section kt-section--first">
                                                                <div class="kt-section__body">
                                                                    <div class="form-group row">
                                                                        <label class="col-xl-3 col-lg-3 col-form-label">Avatar</label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <div class="kt-avatar kt-avatar--outline kt-avatar--circle" id="kt_profile_avatar_4">
                                                                                <div class="kt-avatar__holder" style="background-image: url(assets/media/users/<%=usr_icon%>)"></div>
                                                                                <label class="kt-avatar__upload" data-toggle="kt-tooltip" title="Change avatar">
                                                                                    <i class="fa fa-pen"></i>
                                                                                    <input type='file' name="avatar" accept="image/png, image/jpeg, image/gif, image/jpg"/>
                                                                                </label>
                                                                                <span class="kt-avatar__cancel" data-toggle="kt-tooltip" title="Cancel avatar">
																		<i class="fa fa-times"></i>
																	</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-xl-3 col-lg-3 col-form-label">First Name</label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <input class="form-control" name="FName" id="FN" type="text" value="<%=userDAO.SelectUserInfo(usrname,"FName")%>">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-xl-3 col-lg-3 col-form-label">Last Name</label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <input class="form-control" name="LName" id="LN" type="text" value="<%=userDAO.SelectUserInfo(usrname,"LName")%>" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <label class="col-xl-3"></label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <h3 class="kt-section__title kt-section__title-sm">Contact Info:</h3>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-xl-3 col-lg-3 col-form-label">Contact Phone</label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <div class="input-group">
                                                                                <div class="input-group-prepend"><span class="input-group-text"><i class="la la-phone"></i></span></div>
                                                                                <input type="text" class="form-control" name="HP" value="<%=HP%>" placeholder="Phone" aria-describedby="basic-addon1" id="HP">
                                                                            </div>
                                                                            <span class="form-text text-muted">We'll never share your email with anyone else.</span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-xl-3 col-lg-3 col-form-label">Description</label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <div class="input-group">
                                                                                <div name="editor" id="editor" class="form-control">
                                                                                    <%=Desc%>
                                                                                </div>
                                                                            </div>
                                                                                <script>
                                                                                    BalloonEditor
                                                                                        .create( document.querySelector( '#editor' ) )
                                                                                        .catch( error => {
                                                                                            console.error( error );
                                                                                        } );
                                                                                </script>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="kt-portlet__foot">
                                                            <div class="kt-form__actions">
                                                                <div class="row">
                                                                    <div class="col-lg-3 col-xl-3">
                                                                    </div>
                                                                    <div class="col-lg-9 col-xl-9">
                                                                        <input type="submit" data-ktwizard-action="action-submit" class="btn btn-success" value="Submit"/>
                                                                        <button type="reset" class="btn btn-secondary">Cancel</button>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Row-->
                                </div>
                                <script>
                                // Class definition
                                var KTWizardDemo = function () {

                                    var formEl;
                                    var validator;

                                    var initValidation = function () {
                                        validator = formEl.validate({
                                            // Validate only visible fields
                                            ignore: ":hidden",

                                            // Validation rules
                                            rules: {
                                                LN: {
                                                    required: true,
                                                    maxlength:20,
                                                },
                                                FN: {
                                                    required: true,
                                                    maxlength:20,
                                                },
                                            },
                                            errorElement:'div',
                                            errorClass:'invalid-feedback',

                                            // Display error
                                            invalidHandler: function (event, validator) {
                                                KTUtil.scrollTop();

                                                swal.fire({
                                                    "title": "",
                                                    "text": "There are some errors in your submission. Please correct them.",
                                                    "type": "error",
                                                    "confirmButtonClass": "btn btn-secondary m-btn m-btn--wide"
                                                });
                                            },

                                        });
                                    }
                                    var xmlHttp = new XMLHttpRequest();
                                    var initSubmit = function () {
                                        var btn = formEl.find('[data-ktwizard-action="action-submit"]');

                                        btn.on('click', function (e) {
                                            e.preventDefault();

                                            if (validator.form()) {
                                                // See: src\js\framework\base\app.js
                                                KTApp.progress(btn);
                                                //KTApp.block(formEl);

                                                // See: http://malsup.com/jquery/form/#ajaxSubmit
                                                formEl.ajaxSubmit({
                                                    url:"Profile?UserID=<%=usr%>",
                                                    data:{
                                                      "editor":document.getElementById("editor").innerHTML,
                                                    },
                                                    success: function (data) {
                                                        KTApp.unprogress(btn);
                                                        //KTApp.unblock(formEl);

                                                        if(data==0){
                                                            swal.fire({
                                                                "title": "",
                                                                "text": "The personal information has been successfully editted!",
                                                                "type": "success",
                                                                "confirmButtonClass": "btn btn-secondary"
                                                            });
                                                        }else{
                                                            swal.fire({
                                                                "title": "",
                                                                "text": "There are some errors in your submission. Please correct them.",
                                                                "type": "error",
                                                                "confirmButtonClass": "btn btn-secondary m-btn m-btn--wide"
                                                            });
                                                        }

                                                    }
                                                });
                                            }
                                        });
                                    }


                                    return {
                                        // public functions
                                        init: function () {
                                            formEl = $('#personal_info');
                                            initValidation();
                                            initSubmit();
                                        }
                                    };
                                }();

                                document.addEventListener('DOMContentLoaded', function(){
                                    // your code goes here
                                    KTWizardDemo.init()
                                }, false);
                            </script>
                                <div class="tab-pane fade" id="kt_tabs_1_2" role="tabpanel">

                                    <!--begin::Row-->
                                    <div class="row">
                                        <div class="col-lg-12 col-xl-12  order-lg-1 order-xl-1">
                                            <div class="kt-grid__item kt-grid__item--fluid kt-app__content">
                                                <div class="kt-portlet">
                                                    <div class="kt-portlet__head">
                                                        <div class="kt-portlet__head-label">
                                                            <h3 class="kt-portlet__head-title">Account Information <small>change your account settings</small></h3>
                                                        </div>
                                                    </div>
                                                    <form class="kt-form kt-form--label-right" id="kt_profile_form_account">
                                                        <div class="kt-portlet__body">
                                                            <div class="kt-section kt-section--first">
                                                                <div class="kt-section__body">
                                                                    <div class="row">
                                                                        <label class="col-xl-3"></label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <h3 class="kt-section__title kt-section__title-sm">Account:</h3>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-xl-3 col-lg-3 col-form-label">Email Address</label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <div class="input-group">
                                                                                <div class="input-group-prepend"><span class="input-group-text"><i class="la la-at"></i></span></div>
                                                                                <input type="text" class="form-control" value="<%=usr_mail%>" placeholder="Email" aria-describedby="basic-addon1">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="kt-portlet__foot">
                                                            <div class="kt-form__actions">
                                                                <div class="row">
                                                                    <div class="col-lg-3 col-xl-3">
                                                                    </div>
                                                                    <div class="col-lg-9 col-xl-9">
                                                                        <button type="reset" class="btn btn-success">Submit</button>&nbsp;
                                                                        <button type="reset" class="btn btn-secondary">Cancel</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Row-->
                                </div>

                                <div class="tab-pane fade" id="kt_tabs_1_3" role="tabpanel">

                                    <!--begin::Row-->
                                    <div class="row">
                                        <div class="col-lg-12 col-xl-12  order-lg-1 order-xl-1">
                                            <!--Begin:: App Content-->
                                            <div class="kt-grid__item kt-grid__item--fluid kt-app__content">
                                                <div class="kt-portlet">
                                                    <div class="kt-portlet__head">
                                                        <div class="kt-portlet__head-label">
                                                            <h3 class="kt-portlet__head-title">Change Password<small>change or reset your account password</small></h3>
                                                        </div>
                                                        <div class="kt-portlet__head-toolbar kt-hidden">
                                                            <div class="kt-portlet__head-toolbar">
                                                                <div class="dropdown dropdown-inline">
                                                                    <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                        <i class="la la-sellsy"></i>
                                                                    </button>
                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                        <ul class="kt-nav">
                                                                            <li class="kt-nav__section kt-nav__section--first">
                                                                                <span class="kt-nav__section-text">Quick Actions</span>
                                                                            </li>
                                                                            <li class="kt-nav__item">
                                                                                <a href="#" class="kt-nav__link">
                                                                                    <i class="kt-nav__link-icon flaticon2-graph-1"></i>
                                                                                    <span class="kt-nav__link-text">Statistics</span>
                                                                                </a>
                                                                            </li>
                                                                            <li class="kt-nav__item">
                                                                                <a href="#" class="kt-nav__link">
                                                                                    <i class="kt-nav__link-icon flaticon2-calendar-4"></i>
                                                                                    <span class="kt-nav__link-text">Events</span>
                                                                                </a>
                                                                            </li>
                                                                            <li class="kt-nav__item">
                                                                                <a href="#" class="kt-nav__link">
                                                                                    <i class="kt-nav__link-icon flaticon2-layers-1"></i>
                                                                                    <span class="kt-nav__link-text">Reports</span>
                                                                                </a>
                                                                            </li>
                                                                            <li class="kt-nav__item">
                                                                                <a href="#" class="kt-nav__link">
                                                                                    <i class="kt-nav__link-icon flaticon2-bell-1o"></i>
                                                                                    <span class="kt-nav__link-text">Notifications</span>
                                                                                </a>
                                                                            </li>
                                                                            <li class="kt-nav__item">
                                                                                <a href="#" class="kt-nav__link">
                                                                                    <i class="kt-nav__link-icon flaticon2-file-1"></i>
                                                                                    <span class="kt-nav__link-text">Files</span>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <form class="kt-form kt-form--label-right" id="kt_profile_form_password">
                                                        <div class="kt-portlet__body">
                                                            <div class="kt-section kt-section--first">
                                                                <div class="kt-section__body">
                                                                    <div class="alert alert-solid-danger alert-bold fade show kt-margin-t-20 kt-margin-b-40" role="alert">
                                                                        <div class="alert-icon"><i class="fa fa-exclamation-triangle"></i></div>
                                                                        <div class="alert-text">Configure user passwords to expire periodically. Users will need warning that their passwords are going to expire,
                                                                            <br>or they might inadvertently get locked out of the system!</div>
                                                                        <div class="alert-close">
                                                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                                <span aria-hidden="true"><i class="la la-close"></i></span>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <label class="col-xl-3"></label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <h3 class="kt-section__title kt-section__title-sm">Change Or Recover Your Password:</h3>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-xl-3 col-lg-3 col-form-label">Current Password</label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <input type="password" class="form-control" value="" placeholder="Current password">
                                                                            <a data-toggle="modal" data-target="#exampleModalBackdropStatic" class="kt-link kt-font-sm kt-font-bold kt-margin-t-5">Forgot password ?</a>
                                                                            <div class="modal fade" id="exampleModalBackdropStatic" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalBackdropStatic" aria-hidden="true">
                                                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                                                    <div class="modal-content">
                                                                                        <div class="modal-header">
                                                                                            <h5 class="modal-title" id="exampleModalCenterTitle">Forgot Password</h5>
                                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                <span aria-hidden="true">&times;</span>
                                                                                            </button>
                                                                                        </div>
                                                                                        <div class="modal-body">
                                                                                          
                                                                                        </div>
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-outline-brand" data-dismiss="modal">Close</button>
                                                                                            <button type="button" class="btn btn-outline-brand">Save changes</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-xl-3 col-lg-3 col-form-label">New Password</label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <input type="password" class="form-control" value="" placeholder="New password">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group form-group-last row">
                                                                        <label class="col-xl-3 col-lg-3 col-form-label">Verify Password</label>
                                                                        <div class="col-lg-9 col-xl-6">
                                                                            <input type="password" class="form-control" value="" placeholder="Verify password">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="kt-portlet__foot">
                                                            <div class="kt-form__actions">
                                                                <div class="row">
                                                                    <div class="col-lg-3 col-xl-3">
                                                                    </div>
                                                                    <div class="col-lg-9 col-xl-9">
                                                                        <button type="reset" class="btn btn-brand btn-bold">Change Password</button>&nbsp;
                                                                        <button type="reset" class="btn btn-secondary">Cancel</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>

                                            <!--End:: App Content-->
                                        </div>
                                        <!--end::Row-->
                                    </div>
                                </div>
                            </div>

                            <!-- end:: Content -->
                        </div>

                                <%}else{
                                %>
                        <!-- begin:: Content -->
                        <div class="kt-container  kt-grid__item kt-grid__item--fluid">

                            <!--begin::Portlet-->
                            <div class="kt-portlet kt-widget kt-widget--fit kt-widget--general-3">
                                <div class="kt-portlet__body">
                                    <div class="kt-widget__top">
                                        <div class="kt-media kt-media--xl kt-media--circle">
                                            <img src="assets/media/users/<%=usr_icon%>>" alt="image">
                                        </div>
                                        <div class="kt-widget__wrapper">
                                            <div class="kt-widget__label">

                                                <span class="kt-widget__title">
                                                    <%=usrname%>
                                                </span>
                                                <span class="kt-widget__desc">
															<%=userDAO.SelectUserInfo(usrname,"Role")%>
                                                </span>
                                            </div>
                                            <div class="kt-widget__progress">
                                                <div class="kt-widget__cont">
                                                    <div class="kt-widget__stat">
                                                        <span class="kt-widget__caption">Progress</span>
                                                        <span class="kt-widget__value">78</span>
                                                    </div>
                                                    <div class="progress">

                                                        <!-- Doc: A bootstrap progress bar can be used to show a user how far along it's in a process, see https://getbootstrap.com/docs/4.1/components/progress/ -->
                                                        <div class="progress-bar bg-brand" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="kt-widget__links">
                                                <div class="kt-widget__cont">
                                                    <div class="kt-widget__link">
                                                        <i class="flaticon2-send  kt-font-success"></i><%=usr_mail%>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="kt-widget__stats">
                                                <div class="kt-widget__stat" href="#">
                                                    <span class="kt-widget__value">45</span>
                                                    <span class="kt-widget__caption">Orders</span>
                                                </div>
                                                <div class="kt-widget__stat" href="#">
                                                    <span class="kt-widget__value">246</span>
                                                    <span class="kt-widget__caption">Purchases</span>
                                                </div>
                                                <div class="kt-widget__stat" href="#">
                                                    <span class="kt-widget__value">37</span>
                                                    <span class="kt-widget__caption">Reviews</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--end::Portlet-->
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="kt_tabs_1_1" role="tabpanel">

                                    <!--begin::Row-->
                                    <div class="row">
                                        <div class="col-lg-6 col-xl-4  order-lg-1 order-xl-1">

                                            <!--begin::Portlet-->
                                            <div class="kt-portlet kt-portlet--height-fluid">
                                                <div class="kt-portlet__head">
                                                    <div class="kt-portlet__head-label">
                                                        <h3 class="kt-portlet__head-title">Latest Uploads</h3>
                                                    </div>
                                                    <div class="kt-portlet__head-toolbar">
                                                        <div class="kt-portlet__head-actions">
                                                            <a href="#" class="btn btn-default btn-upper btn-sm btn-bold">All FILES</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="kt-portlet__body kt-portlet__body--fit kt-portlet__body--fluid">
                                                    <div class="kt-widget-7">
                                                        <div class="kt-widget-7__items">
                                                            <div class="kt-widget-7__item">
                                                                <div class="kt-widget-7__item-pic">
                                                                    <img src="assets/media/files/doc.svg" alt="" />
                                                                </div>
                                                                <div class="kt-widget-7__item-info">
                                                                    <a href="#" class="kt-widget-7__item-title">
                                                                        Keeg Design Reqs
                                                                    </a>
                                                                    <div class="kt-widget-7__item-desc">
                                                                        95 MB
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-7__item-toolbar">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <ul class="kt-nav">
                                                                                <li class="kt-nav__section kt-nav__section--first">
                                                                                    <span class="kt-nav__section-text">EXPORT TOOLS</span>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-eye"></i>
                                                                                        <span class="kt-nav__link-text">View</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-comment-o"></i>
                                                                                        <span class="kt-nav__link-text">Coments</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-copy"></i>
                                                                                        <span class="kt-nav__link-text">Copy</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-file-excel-o"></i>
                                                                                        <span class="kt-nav__link-text">Excel</span>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-7__item">
                                                                <div class="kt-widget-7__item-pic">
                                                                    <img src="assets/media/files/pdf.svg" alt="" />
                                                                </div>
                                                                <div class="kt-widget-7__item-info">
                                                                    <a href="#" class="kt-widget-7__item-title">
                                                                        S.E.R Agreement
                                                                    </a>
                                                                    <div class="kt-widget-7__item-desc">
                                                                        805 MB
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-7__item-toolbar">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <ul class="kt-nav">
                                                                                <li class="kt-nav__section kt-nav__section--first">
                                                                                    <span class="kt-nav__section-text">EXPORT TOOLS</span>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-eye"></i>
                                                                                        <span class="kt-nav__link-text">View</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-comment-o"></i>
                                                                                        <span class="kt-nav__link-text">Coments</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-copy"></i>
                                                                                        <span class="kt-nav__link-text">Copy</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-file-excel-o"></i>
                                                                                        <span class="kt-nav__link-text">Excel</span>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-7__item">
                                                                <div class="kt-widget-7__item-pic">
                                                                    <img src="assets/media/files/jpg.svg" alt="" />
                                                                </div>
                                                                <div class="kt-widget-7__item-info">
                                                                    <a href="#" class="kt-widget-7__item-title">
                                                                        FlyMore Screenshot
                                                                    </a>
                                                                    <div class="kt-widget-7__item-desc">
                                                                        4 MB
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-7__item-toolbar">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <ul class="kt-nav">
                                                                                <li class="kt-nav__section kt-nav__section--first">
                                                                                    <span class="kt-nav__section-text">EXPORT TOOLS</span>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-eye"></i>
                                                                                        <span class="kt-nav__link-text">View</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-comment-o"></i>
                                                                                        <span class="kt-nav__link-text">Coments</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-copy"></i>
                                                                                        <span class="kt-nav__link-text">Copy</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-file-excel-o"></i>
                                                                                        <span class="kt-nav__link-text">Excel</span>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-7__item">
                                                                <div class="kt-widget-7__item-pic">
                                                                    <img src="assets/media/files/zip.svg" alt="" />
                                                                </div>
                                                                <div class="kt-widget-7__item-info">
                                                                    <a href="#" class="kt-widget-7__item-title">
                                                                        ST.11 Dacuments
                                                                    </a>
                                                                    <div class="kt-widget-7__item-desc">
                                                                        Unknown
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-7__item-toolbar">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <ul class="kt-nav">
                                                                                <li class="kt-nav__section kt-nav__section--first">
                                                                                    <span class="kt-nav__section-text">EXPORT TOOLS</span>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-eye"></i>
                                                                                        <span class="kt-nav__link-text">View</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-comment-o"></i>
                                                                                        <span class="kt-nav__link-text">Coments</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-copy"></i>
                                                                                        <span class="kt-nav__link-text">Copy</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-file-excel-o"></i>
                                                                                        <span class="kt-nav__link-text">Excel</span>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-7__item">
                                                                <div class="kt-widget-7__item-pic">
                                                                    <img src="assets/media/files/xml.svg" alt="" />
                                                                </div>
                                                                <div class="kt-widget-7__item-info">
                                                                    <a href="#" class="kt-widget-7__item-title">
                                                                        XML AOL Data Fetchin
                                                                    </a>
                                                                    <div class="kt-widget-7__item-desc">
                                                                        4 MB
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-7__item-toolbar">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <ul class="kt-nav">
                                                                                <li class="kt-nav__section kt-nav__section--first">
                                                                                    <span class="kt-nav__section-text">EXPORT TOOLS</span>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-eye"></i>
                                                                                        <span class="kt-nav__link-text">View</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-comment-o"></i>
                                                                                        <span class="kt-nav__link-text">Coments</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-copy"></i>
                                                                                        <span class="kt-nav__link-text">Copy</span>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="kt-nav__item">
                                                                                    <a href="#" class="kt-nav__link">
                                                                                        <i class="kt-nav__link-icon la la-file-excel-o"></i>
                                                                                        <span class="kt-nav__link-text">Excel</span>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="kt-widget-7__foot">
                                                            <img src="assets/media/misc/clouds.png" alt="" />
                                                            <div class="kt-widget-7__upload">
                                                                <a href="#"><i class="flaticon-upload"></i></a>
                                                                <span>Drag files here</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--end::Portlet-->
                                        </div>
                                        <div class="col-lg-12 col-xl-4  order-lg-1 order-xl-1">

                                            <!--begin::Portlet-->
                                            <div class="kt-portlet kt-portlet--height-fluid">
                                                <div class="kt-portlet__head">
                                                    <div class="kt-portlet__head-label">
                                                        <h3 class="kt-portlet__head-title">Daily Salles</h3>
                                                    </div>
                                                    <div class="kt-portlet__head-toolbar">
                                                        <div class="kt-portlet__head-actions">
                                                            <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">CSV</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="kt-portlet__body">
                                                    <div class="kt-widget-4">
                                                        <div class="kt-widget-4__item">
                                                            <div class="kt-widget-4__item-content">
                                                                <div class="kt-widget-4__item-section">
                                                                    <div class="kt-widget-4__item-pic">
                                                                        <img class="" src="assets/media/users/100_3.jpg" alt="" />
                                                                    </div>
                                                                    <div class="kt-widget-4__item-info">
                                                                        <a href="#" class="kt-widget-4__item-username">Chris Bent</a>
                                                                        <div class="kt-widget-4__item-desc">SUV Themes Carp</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-4__item-content">
                                                                <div class="kt-widget-4__item-price">
                                                                    <span class="kt-widget-4__item-badge">$</span>
                                                                    <span class="kt-widget-4__item-number">830</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="kt-widget-4__item">
                                                            <div class="kt-widget-4__item-content">
                                                                <div class="kt-widget-4__item-section">
                                                                    <div class="kt-widget-4__item-pic">
                                                                        <img class="" src="assets/media/users/100_4.jpg" alt="" />
                                                                    </div>
                                                                    <div class="kt-widget-4__item-info">
                                                                        <a href="#" class="kt-widget-4__item-username">Ashley Stock</a>
                                                                        <div class="kt-widget-4__item-desc">Merscedes Benz AMGww</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-4__item-content">
                                                                <div class="kt-widget-4__item-price">
                                                                    <span class="kt-widget-4__item-badge">$</span>
                                                                    <span class="kt-widget-4__item-number">675</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="kt-widget-4__item">
                                                            <div class="kt-widget-4__item-content">
                                                                <div class="kt-widget-4__item-section">
                                                                    <div class="kt-widget-4__item-pic">
                                                                        <img class="" src="assets/media/users/100_5.jpg" alt="" />
                                                                    </div>
                                                                    <div class="kt-widget-4__item-info">
                                                                        <a href="#" class="kt-widget-4__item-username">Jimmy Yesuku</a>
                                                                        <div class="kt-widget-4__item-desc">All Nippon United Airlines</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-4__item-content">
                                                                <div class="kt-widget-4__item-price">
                                                                    <span class="kt-widget-4__item-badge">$</span>
                                                                    <span class="kt-widget-4__item-number">194</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="kt-widget-4__item">
                                                            <div class="kt-widget-4__item-content">
                                                                <div class="kt-widget-4__item-section">
                                                                    <div class="kt-widget-4__item-pic">
                                                                        <img class="" src="assets/media/users/100_2.jpg" alt="" />
                                                                    </div>
                                                                    <div class="kt-widget-4__item-info">
                                                                        <a href="#" class="kt-widget-4__item-username">Amanda West</a>
                                                                        <div class="kt-widget-4__item-desc">Comboy Westem Limited</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-4__item-content">
                                                                <div class="kt-widget-4__item-price">
                                                                    <span class="kt-widget-4__item-badge">$</span>
                                                                    <span class="kt-widget-4__item-number">65</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="kt-widget-4__item">
                                                            <div class="kt-widget-4__item-content">
                                                                <div class="kt-widget-4__item-section">
                                                                    <div class="kt-widget-4__item-pic">
                                                                        <img class="" src="assets/media/users/100_6.jpg" alt="" />
                                                                    </div>
                                                                    <div class="kt-widget-4__item-info">
                                                                        <a href="#" class="kt-widget-4__item-username">Nick Holms</a>
                                                                        <div class="kt-widget-4__item-desc">UILab Inc</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="kt-widget-4__item-content">
                                                                <div class="kt-widget-4__item-price">
                                                                    <span class="kt-widget-4__item-badge">$</span>
                                                                    <span class="kt-widget-4__item-number">65</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--end::Portlet-->
                                        </div>
                                        <div class="col-lg-12 col-xl-4  order-lg-1 order-xl-1">

                                            <!--begin::Portlet-->
                                            <div class="kt-portlet kt-portlet--height-fluid kt-portlet--tabs">
                                                <div class="kt-portlet__head">
                                                    <div class="kt-portlet__head-label">
                                                        <h3 class="kt-portlet__head-title">
                                                            Latest Tasks
                                                        </h3>
                                                    </div>
                                                    <div class="kt-portlet__head-toolbar">
                                                        <ul class="nav nav-tabs nav-tabs-line nav-tabs-line-brand nav-tabs-bold" role="tablist">
                                                            <li class="nav-item">
                                                                <a class="nav-link active show" data-toggle="tab" href="#kt_portlet_tabs_1_1_content" role="tab" aria-selected="false">
                                                                    Today
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="kt-portlet__body">
                                                    <div class="tab-content">
                                                        <div class="tab-pane fade active show" id="kt_portlet_tabs_1_1_content" role="tabpanel">
                                                            <div class="kt-widget-5">
                                                                <div class="kt-widget-5__item kt-widget-5__item--info">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            Management meeting
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            09:30 AM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-5__item kt-widget-5__item--danger">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            Replace datatables rows color
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            12:00 AM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-5__item kt-widget-5__item--brand">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            Export Navitare booking table
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            01:20 PM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-5__item kt-widget-5__item--success">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            NYCS internal discussion
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            03: 00 PM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-5__item kt-widget-5__item--danger">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            Project Launch
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            11: 00 AM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="kt-widget-5__item kt-widget-5__item--success">
                                                                    <div class="kt-widget-5__item-info">
                                                                        <a href="#" class="kt-widget-5__item-title">
                                                                            Server maintenance
                                                                        </a>
                                                                        <div class="kt-widget-5__item-datetime">
                                                                            4: 30 PM
                                                                        </div>
                                                                    </div>
                                                                    <div class="kt-widget-5__item-check">
                                                                        <label class="kt-radio">
                                                                            <input type="radio" checked="checked" name="radio1">
                                                                            <span></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--end::Portlet-->
                                        </div>
                                    </div>

                                    <!--end::Row-->
                                </div>
                            </div>
                        </div>

                        <!-- end:: Content -->

                        <%}%>
            </div>
            </div>
            <!-- begin:: Footer -->
            <%@include file="../layout/FooterV1.jsp"%>

            <!-- end:: Footer -->
        </div>
    </div>
</div>
</div>
<!-- end:: Page -->


<!-- begin::Scrolltop -->
<div id="kt_scrolltop" class="kt-scrolltop">
    <i class="fa fa-arrow-up"></i>
</div>

<!-- end::Scrolltop -->

<!-- begin::Global Config(global config for global JS sciprts) -->
<script>
    var KTAppOptions = {
        "colors": {
            "state": {
                "brand": "#4d5cf2",
                "metal": "#c4c5d6",
                "light": "#ffffff",
                "accent": "#00c5dc",
                "primary": "#5867dd",
                "success": "#34bfa3",
                "info": "#36a3f7",
                "warning": "#ffb822",
                "danger": "#fd3995",
                "focus": "#9816f4"
            },
            "base": {
                "label": [
                    "#c5cbe3",
                    "#a1a8c3",
                    "#3d4465",
                    "#3e4466"
                ],
                "shape": [
                    "#f0f3ff",
                    "#d9dffa",
                    "#afb4d4",
                    "#646c9a"
                ]
            }
        }
    };
</script>

<!-- end::Global Config -->

<!--begin::Global Theme Bundle(used by all pages) -->
<script src="assets/plugins/global/plugins.bundle.js" type="text/javascript"></script>
<script src="assets/js/scripts.bundle.js" type="text/javascript"></script>

<!--end::Global Theme Bundle -->

<!--begin::Page Vendors(used by this page) -->
<script src="assets/plugins/custom/fullcalendar/fullcalendar.bundle.js" type="text/javascript"></script>

<!--end::Page Vendors -->

<!--begin::Page Scripts(used by this page) -->
<script src="assets/js/pages/dashboard.js" type="text/javascript"></script>
<script src="assets/js/pages/custom/profile/overview-2.js" type="text/javascript"></script>
<!--end::Page Scripts -->
</body>

<!-- end::Body -->
</html>
