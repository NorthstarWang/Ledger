<%--
  Created by IntelliJ IDEA.
  User: 15276
  Date: 2020/6/22
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<!-- begin::Head -->
<head>
    <meta charset="utf-8" />
    <title>About</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!--begin::Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">

    <!--end::Fonts -->

    <!--begin::Global Theme Styles(used by all pages) -->
    <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />
    <!--end::Global Theme Styles -->

    <!--begin::Layout Skins(used by all pages) -->

    <!--end::Layout Skins -->
    <link rel="shortcut icon" href="assets/media/logos/Juncus_title.png" />
</head>

<!-- end::Head -->

<!-- begin::Body -->
<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header--minimize-menu kt-header-mobile--fixed kt-subheader--enabled kt-subheader--transparent kt-page--loading">

<!-- begin::Page loader -->

<!-- end::Page Loader -->

<!-- begin:: Page -->

<!-- begin:: Header Mobile -->
<div id="kt_header_mobile" class="kt-header-mobile  kt-header-mobile--fixed ">
    <div class="kt-header-mobile__logo">
        <a href="index.html">
            <img alt="Logo" src="assets/media/logos/index_logo.png.png" />
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
            <jsp:include page="Web/layout/HeaderV2.jsp" flush="true"/>
            <%@include file="/Web/layout/HeaderV1.jsp"%>
            </div>
            <!-- end:: Header -->
            <div class="kt-container kt-container--fluid kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-grid--stretch">
                <div class="kt-body kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-grid--stretch" id="kt_body">
                    <div class="kt-content kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">

                        <!-- begin:: Subheader -->
                        <div class="kt-subheader   kt-grid__item" id="kt_subheader"></div>
                        <!-- end:: Subheader -->

                        <!-- begin:: Content -->
                        <div class="kt-container kt-container--fluid kt-grid__item kt-grid__item--fluid">
                            <div class="row">
                                <div class="col-xl-3">

                                    <!--begin::Portlet-->
                                    <div class="kt-portlet">
                                        <div class="kt-portlet__body kt-portlet__body--fit-x">
                                            <ul class="kt-nav kt-nav--bold kt-nav--md-space kt-nav--lg-font kt-nav--v3">
                                                <li class="kt-nav__item ">
                                                    <a href="#" class="kt-nav__link ">
                                                        <span class="kt-nav__link-text">About Our Product</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item">
                                                    <a href="#" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">License Related</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item active">
                                                    <a href="" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">Support Policy</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item">
                                                    <a href="" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">Single Application</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item">
                                                    <a href="" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">Multi Application</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item">
                                                    <a href="" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">Terms of Use</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item">
                                                    <a href="" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">Author Fees</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item">
                                                    <a href="" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">Product Approval</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item">
                                                    <a href="" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">Support Forum</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item">
                                                    <a href="" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">Our Advisors</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item">
                                                    <a href="" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">NDA Terms</span>
                                                    </a>
                                                </li>
                                                <li class="kt-nav__item">
                                                    <a href="" class="kt-nav__link">
                                                        <span class="kt-nav__link-text">Privacy Policy</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <!--end::Portlet-->
                                </div>
                                <div class="col-xl-9">

                                    <!--begin::Portlet-->
                                    <div class="kt-portlet">
                                        <div class="kt-portlet__body">

                                            <!--begin::Section-->
                                            <h1 class="kt-heading kt-heading--space-xl kt-heading--lg kt-heading--medium">Support Policy</h1>
                                            <div class="kt-section">
                                                <div class="kt-heading kt-heading--md kt-heading--medium">Is your Twitter campaign sinking?</div>
                                                <div class="kt-section__content">

                                                    <!--begin::Accordion-->
                                                    <div class="accordion accordion-light" id="accordionExample">
                                                        <div class="card">
                                                            <div class="card-header" id="headingOne">
                                                                <div class="card-title" data-toggle="collapse" role="button" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                                    There are thousands of blogs on the web, but how the truly bloggers
                                                                </div>
                                                            </div>
                                                            <div id="collapseOne" class="card-body-wrapper collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                                <div class="card-body">
                                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="headingTwo">
                                                                <div class="card-title collapsed" data-toggle="collapse" role="button" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                                                    Quality content is exactly what all the favorite blogs
                                                                </div>
                                                            </div>
                                                            <div id="collapseTwo" class="card-body-wrapper collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                                                <div class="card-body">
                                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="headingThree">
                                                                <div class="card-title collapsed" data-toggle="collapse" role="button" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                                                                    Take a look at the follow ing list of blogs and make sure
                                                                </div>
                                                            </div>
                                                            <div id="collapseThree" class="card-body-wrapper collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                                <div class="card-body">
                                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="headingFour">
                                                                <div class="card-title collapsed" data-toggle="collapse" role="button" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                                                                    The point here is that anyone can ramble on
                                                                </div>
                                                            </div>
                                                            <div id="collapseFour" class="card-body-wrapper collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                                                <div class="card-body">
                                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!--end::Accordion-->
                                                </div>
                                            </div>

                                            <!--end::Section-->
                                            <div class="kt-separator kt-separator--space-sm"></div>

                                            <!--begin::Section-->
                                            <div class="kt-section">
                                                <div class="kt-heading kt-heading--md kt-heading--medium">What do popular blogs have in common?</div>
                                                <div class="kt-section__content">

                                                    <!--begin::Accordion-->
                                                    <div class="accordion accordion-light" id="accordionExample2">
                                                        <div class="card">
                                                            <div class="card-header" id="headingOne2">
                                                                <div class="card-title" data-toggle="collapse" role="button" data-target="#collapseOne2" aria-expanded="true" aria-controls="collapseOne2">
                                                                    Sign up with a content management commerce system
                                                                </div>
                                                            </div>
                                                            <div id="collapseOne2" class="card-body-wrapper collapse show" aria-labelledby="headingOne2" data-parent="#accordionExample2">
                                                                <div class="card-body">
                                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="headingTwo2">
                                                                <div class="card-title collapsed" data-toggle="collapse" role="button" data-target="#collapseTwo2" aria-expanded="true" aria-controls="collapseTwo2">
                                                                    This is true for every blogger to start owne blog on their own
                                                                </div>
                                                            </div>
                                                            <div id="collapseTwo2" class="card-body-wrapper collapse" aria-labelledby="headingTwo2" data-parent="#accordionExample2">
                                                                <div class="card-body">
                                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="headingThree2">
                                                                <div class="card-title collapsed" data-toggle="collapse" role="button" data-target="#collapseThree2" aria-expanded="true" aria-controls="collapseThree2">
                                                                    Most website hosting services charge very little
                                                                </div>
                                                            </div>
                                                            <div id="collapseThree2" class="card-body-wrapper collapse" aria-labelledby="headingThree2" data-parent="#accordionExample2">
                                                                <div class="card-body">
                                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="headingFour2">
                                                                <div class="card-title collapsed" data-toggle="collapse" role="button" data-target="#collapseFour2" aria-expanded="true" aria-controls="collapseFour2">
                                                                    Here are five popular web hosting services to choose from
                                                                </div>
                                                            </div>
                                                            <div id="collapseFour2" class="card-body-wrapper collapse" aria-labelledby="headingFour2" data-parent="#accordionExample2">
                                                                <div class="card-body">
                                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!--end::Accordion-->
                                                </div>
                                            </div>

                                            <!--end::Section-->
                                        </div>
                                    </div>

                                    <!--end::Portlet-->
                                </div>
                            </div>
                        </div>

                        <!-- end:: Content -->
                    </div>
                </div>
            </div>

            <!-- begin:: Footer -->
            <%@include file="/Web/layout/FooterV1.jsp"%>

            <!-- end:: Footer -->
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
</body>

<!-- end::Body -->
</html>
