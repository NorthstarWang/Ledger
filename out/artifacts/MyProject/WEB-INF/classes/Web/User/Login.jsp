﻿<%--
  Created by IntelliJ IDEA.
  User: Wang Yang
  Date: 2020/3/8
  Time: 3:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<!-- begin::Head -->
<head>
    <base href="../../">
    <meta charset="utf-8" />
    <title>Login</title>
    <meta name="description" content="Login">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!--begin::Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">

    <!--end::Fonts -->

    <!--begin::Page Custom Styles(used by this page) -->
    <link href="assets/css/pages/login/login-v2.css" rel="stylesheet" type="text/css" />
    <!--end::Page Custom Styles -->

    <!--begin::Global Theme Styles(used by all pages) -->
    <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />

    <!--end::Global Theme Styles -->

    <!--begin::Layout Skins(used by all pages) -->

    <!--end::Layout Skins -->
    <link rel="shortcut icon" href="assets/media/logos/Juncus_title.png" />
</head>

<!-- end::Head -->

<!-- begin::Body -->
<body class="kt-login-v2--enabled kt-login-v2--enabled kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header--minimize-menu kt-header-mobile--fixed kt-subheader--enabled kt-subheader--transparent kt-page--loading">

<!-- begin::Page loader -->
<!-- end::Page Loader -->

<!-- begin:: Page -->
<div class="kt-grid kt-grid--ver kt-grid--root">
    <div class="kt-grid__item   kt-grid__item--fluid kt-grid  kt-grid kt-grid--hor kt-login-v2" id="kt_login_v2">

        <!--begin::Item-->
        <div class="kt-grid__item  kt-grid--hor">

            <!--begin::Heade-->
            <div class="kt-login-v2__head">
                <div class="kt-login-v2__logo">
                    <a href="index.jsp">
                        <img src="assets/media/logos/index_logo.png" alt="" />
                    </a>
                </div>
                <div class="kt-login-v2__signup">
                    <span>Don't have an account?</span>
                    <a href="Register.jsp" class="kt-link kt-font-brand">Sign Up</a>
                </div>
            </div>

            <!--begin::Head-->
        </div>

        <!--end::Item-->
        <!--begin::Item-->
        <div class="kt-grid__item  kt-grid  kt-grid--ver  kt-grid__item--fluid">

            <!--begin::Body-->
            <div class="kt-login-v2__body">

                <!--begin::Wrapper-->
                <div class="kt-login-v2__wrapper">
                    <div class="kt-login-v2__container">
                        <div class="kt-login-v2__title">
                            <h3>Sign to Account</h3>
                        </div>

                        <!--begin::Form-->
                        <form class="kt-login-v2__form kt-form" action="Login" method="POST" >
                            <% if(session.getAttribute("LoginStatus")==null){}else if(session.getAttribute("LoginStatus").toString()=="Failure"){%>
                            <div class="alert alert-bold alert-solid-danger alert-dismissible" role="alert">
                                <div class="alert-text">Incorrect username or password. Please try again.</div>
                                <div class="alert-close">
                                    <i class="flaticon2-cross kt-icon-sm" data-dismiss="alert"></i>
                                </div>
                            </div>
                            <%
                            session.removeAttribute("LoginStatus");
                            }else{}%>
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Username" name="username">
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="password" placeholder="Password" name="password">
                            </div>

                            <!--begin::Action-->
                            <div class="kt-login-v2__actions">
                                <a href="#" class="kt-link kt-link--brand">
                                    Forgot Password ?
                                </a>
                                <input type="submit" class="btn btn-brand btn-elevate btn-pill" value="Sign In"/>
                            </div>

                            <!--end::Action-->
                        </form>

                        <!--end::Form-->
                    </div>
                </div>

                <!--end::Wrapper-->

                <!--begin::Image-->
                <div class="kt-login-v2__image">
                    <img src="assets/media/misc/bg_icon.svg" alt="">
                </div>

                <!--begin::Image-->
            </div>

            <!--begin::Body-->
        </div>

        <!--end::Item-->

    </div>
</div>
</div>
<!-- end:: Page -->

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

<!--begin::Page Scripts(used by this page) -->
<!--end::Page Scripts -->
</body>

<!-- end::Body -->
</html>
