<%--
  Created by IntelliJ IDEA.
  User: Wang Yang
  Date: 2020/3/8
  Time: 4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<!-- begin::Head -->
<head>
    <base href="../../">
    <meta charset="utf-8" />
    <title>Sign up</title>
    <meta name="description" content="Keen custom wizard demo">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!--begin::Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">

    <!--end::Fonts -->

    <!--begin::Page Custom Styles(used by this page) -->
    <link href="assets/css/pages/wizards/wizard-v1.css" rel="stylesheet" type="text/css" />

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
                <jsp:include page="../layout/HeaderV2.jsp" flush="true"/>
                <%@include file="../layout/HeaderV1.jsp"%>
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
                            <div class="kt-portlet">
                                <div class="kt-portlet__body kt-portlet__body--fit">
                                    <div class="kt-grid kt-grid--desktop-xl kt-grid--ver-desktop-xl kt-wizard-v1 kt-wizard-v1--extend" id="kt_wizard_v4" data-ktwizard-state="step-first">
                                        <div class="kt-grid__item kt-wizard-v1__aside">

                                            <!--begin: Form Wizard Nav -->
                                            <div class="kt-wizard-v1__nav">

                                                <!--doc: Remove "kt-wizard-v1__nav-items--clickable" class and also set 'clickableSteps: false' in the JS init to disable manually clicking step titles -->
                                                <div class="kt-wizard-v1__nav-items kt-wizard-v1__nav-items--clickable">
                                                    <div class="kt-wizard-v1__nav-item" data-ktwizard-type="step" data-ktwizard-state="current">
                                                        <span>1</span>
                                                    </div>
                                                    <div class="kt-wizard-v1__nav-item" data-ktwizard-type="step">
                                                        <span>2</span>
                                                    </div>
                                                    <div class="kt-wizard-v1__nav-item" data-ktwizard-type="step">
                                                        <span>3</span>
                                                    </div>
                                                    <div class="kt-wizard-v1__nav-item" data-ktwizard-type="step">
                                                        <span>4</span>
                                                    </div>
                                                    <div class="kt-wizard-v1__nav-item" data-ktwizard-type="step">
                                                        <span>5</span>
                                                    </div>
                                                </div>
                                                <div class="kt-wizard-v1__nav-details">
                                                    <div class="kt-wizard-v1__nav-item-wrapper" data-ktwizard-type="step-info" data-ktwizard-state="current">
                                                        <div class="kt-wizard-v1__nav-item-title">
                                                            Setup Your Account
                                                        </div>
                                                        <div class="kt-wizard-v1__nav-item-desc">
                                                            To start off, please verify your username is valid to register.
                                                            <img src="assets/media/wizard/undraw_checklist_7q37.svg" alt="image" class="kt-wizard-v1__nav-image" />
                                                        </div>
                                                    </div>
                                                    <div class="kt-wizard-v1__nav-item-wrapper" data-ktwizard-type="step-info">
                                                        <div class="kt-wizard-v1__nav-item-title">
                                                            Setup Your Email
                                                        </div>
                                                        <div class="kt-wizard-v1__nav-item-desc">
                                                            Please enter your Email and you will received the OTP use to verify your email.
                                                            <img src="assets/media/wizard/undraw_checklist_7q37.svg" alt="image" class="kt-wizard-v1__nav-image" />
                                                        </div>
                                                    </div>
                                                    <div class="kt-wizard-v1__nav-item-wrapper" data-ktwizard-type="step-info">
                                                        <div class="kt-wizard-v1__nav-item-title">
                                                            Setup Your Profile
                                                        </div>
                                                        <div class="kt-wizard-v1__nav-item-desc">
                                                            Please enter your name, gender and contact Email.Your description is optional.
                                                            <img src="assets/media/wizard/undraw_resume_folder_2_arse.svg" alt="image" class="kt-wizard-v1__nav-image" />
                                                        </div>
                                                    </div>
                                                    <div class="kt-wizard-v1__nav-item-wrapper" data-ktwizard-type="step-info">
                                                        <div class="kt-wizard-v1__nav-item-title">
                                                            Setup Your Password
                                                        </div>
                                                        <div class="kt-wizard-v1__nav-item-desc">
                                                            Please ensure your password are entered correctly and do not share your password with anyone else.
                                                            <img src="assets/media/wizard/undraw_live_collaboration_2r4y.svg" alt="image" class="kt-wizard-v1__nav-image" />
                                                        </div>
                                                    </div>
                                                    <div class="kt-wizard-v1__nav-item-wrapper" data-ktwizard-type="step-info">
                                                        <div class="kt-wizard-v1__nav-item-title">
                                                            Confirm Your Setup
                                                        </div>
                                                        <div class="kt-wizard-v1__nav-item-desc">
                                                            Please read our Terms and Conditions and check to agree before you can complete your registration.
                                                            <img src="assets/media/wizard/undraw_hiring_cyhs.svg" alt="image" class="kt-wizard-v1__nav-image" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--end: Form Wizard Nav -->
                                        </div>
                                        <div class="kt-grid__item kt-grid__item--fluid kt-wizard-v1__wrapper">

                                            <!--begin: Form Wizard Form-->
                                            <form class="kt-form" id="kt_form" action="Register" method="post">

                                                <!--begin: Form Wizard Step 1-->
                                                <div class="kt-wizard-v1__content" data-ktwizard-type="step-content" data-ktwizard-state="current">
                                                    <div class="kt-heading kt-heading--md">Setup Your Account</div>
                                                    <div class="kt-separator kt-separator--height-xs"></div>
                                                    <div class="kt-form__section kt-form__section--first">
                                                        <div class="form-group">
                                                            <label>Username:</label>
                                                            <input type="text" id="username" class="form-control" name="Username" placeholder="Enter username" onblur="checkValue1()">
                                                            <span class="form-text text-muted">Length between 5-20 characters</span>

                                                        </div>
                                                        <script>
                                                        function checkValue1() {
                                                            var username = document.getElementById("username").value;

                                                            var xmlHttp = new XMLHttpRequest();

                                                            //设置请求状态变化时触发的事件
                                                            xmlHttp.onreadystatechange = function(){
                                                                //如果请求状态码为4，说明请求已经完成，响应已经就绪
                                                                if(xmlHttp.readyState == 4){
                                                                    //响应状态码为200，响应完成
                                                                    if(xmlHttp.status == 200){
                                                                        //获取服务器返回的信息
                                                                        var data = xmlHttp.responseText;
                                                                        //判断返回的信息，输出响应的提示信息
                                                                        if(data == 0 && username.length>=5){
                                                                            document.getElementById("username").classList.add('is-valid');
                                                                            document.getElementById("next").disabled = false;
                                                                        }else if(data == 1 && username.length>=5){
                                                                            document.getElementById("username").classList.add('is-invalid');
                                                                            document.getElementById("next").disabled = true;
                                                                        }else{
                                                                            document.getElementById("next").disabled = true;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            //创建连接
                                                            xmlHttp.open("GET","Register?username="+username,true);

                                                            //发送请求
                                                            xmlHttp.send();
                                                        }
                                                    </script>
                                                    </div>
                                                </div>

                                                <!--end: Form Wizard Step 1-->
                                                <div class="kt-wizard-v1__content" data-ktwizard-type="step-content">
                                                    <div class="kt-heading kt-heading--md">Setup Your Email</div>
                                                    <div class="kt-separator kt-separator--height-sm"></div>
                                                    <div class="kt-form__section kt-form__section--first">
                                                        <div class="row">
                                                            <div class="col-lg-8">
                                                                <div class="form-group">
                                                                    <input type="text" class="form-control" id="Email" name="Email" placeholder="Enter your Email" aria-describedby="basic-addon1">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <button type="button" class="btn btn-outline-primary btn-sm kt-margin-t-5 kt-margin-b-5" onclick="SendCode()">Send</button>
                                                            </div>
                                                            <script>
                                                                function SendCode() {
                                                                    var Email = document.getElementById("Email").value;

                                                                    var xmlHttp = new XMLHttpRequest();

                                                                    //设置请求状态变化时触发的事件
                                                                    xmlHttp.onreadystatechange = function(){
                                                                        //如果请求状态码为4，说明请求已经完成，响应已经就绪
                                                                        if(xmlHttp.readyState == 4){
                                                                            //响应状态码为200，响应完成
                                                                            if(xmlHttp.status == 200){
                                                                                //获取服务器返回的信息
                                                                                var data = xmlHttp.responseText;
                                                                                //判断返回的信息，输出响应的提示信息
                                                                                if(data!=null){
                                                                                    document.getElementById("Email").classList.remove('is-invalid');
                                                                                    document.getElementById("Email").classList.add('is-valid');
                                                                                    document.getElementById("OTP").disabled = false;
                                                                                    document.getElementById("next").disabled = true;
                                                                                }else{
                                                                                    document.getElementById("Email").classList.remove('is-valid');
                                                                                    document.getElementById("Email").classList.add('is-invalid');
                                                                                    document.getElementById("OTP").disabled = true;
                                                                                    document.getElementById("next").disabled = true;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    //创建连接
                                                                    xmlHttp.open("POST","Mail?Email="+Email);

                                                                    //发送请求
                                                                    xmlHttp.send();
                                                                }
                                                            </script>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <input type="text" class="form-control" id="OTP" name="OTP" placeholder="OTP" disabled>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <button type="button" class="btn btn-outline-primary btn-sm kt-margin-t-5 kt-margin-b-5" onclick="Validation()">Verify</button>
                                                            </div>
                                                        </div>
                                                        <script>
                                                            function Validation() {
                                                                var OTP = document.getElementById("OTP").value;

                                                                var xmlHttp = new XMLHttpRequest();

                                                                //设置请求状态变化时触发的事件
                                                                xmlHttp.onreadystatechange = function(){
                                                                    //如果请求状态码为4，说明请求已经完成，响应已经就绪
                                                                    if(xmlHttp.readyState == 4){
                                                                        //响应状态码为200，响应完成
                                                                        if(xmlHttp.status == 200){
                                                                            //获取服务器返回的信息
                                                                            var data = xmlHttp.responseText;
                                                                            //判断返回的信息，输出响应的提示信息
                                                                            if(data == 0){
                                                                                document.getElementById("OTP").classList.add('is-valid');
                                                                                document.getElementById("next").disabled = false;
                                                                            }else{
                                                                                document.getElementById("OTP").classList.add('is-invalid');
                                                                                document.getElementById("next").disabled = true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                //创建连接
                                                                xmlHttp.open("GET","Mail?OTP="+OTP);

                                                                //发送请求
                                                                xmlHttp.send();
                                                            }
                                                        </script>
                                                    </div>
                                                </div>
                                                <!--begin: Form Wizard Step 2-->
                                                <div class="kt-wizard-v1__content" data-ktwizard-type="step-content">
                                                    <div class="kt-heading kt-heading--md">Setup Your Profile</div>
                                                    <div class="kt-separator kt-separator--height-sm"></div>
                                                    <div class="kt-form__section kt-form__section--first">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <label>Last Name:</label>
                                                                    <input type="text" class="form-control" name="LN" placeholder="Enter your last name">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <label>First Name:</label>
                                                                    <input type="text" class="form-control" name="FN" placeholder="Enter your first name">
                                                                </div>
                                                            </div>
                                                        </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label>Gender</label>
                                                                        <div class="kt-radio-inline">
                                                                            <label class="kt-radio">
                                                                                <input type="radio" name="radioGender" value="Male"> Male
                                                                                <span></span>
                                                                            </label>
                                                                            <label class="kt-radio">
                                                                                <input type="radio" name="radioGender" value="Female"> Female
                                                                                <span></span>
                                                                            </label>
                                                                            <span id="errorGender"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label>Description:</label>
                                                                        <textarea class="form-control" name="Description" rows="3" placeholder="Enter your description"></textarea>
                                                                        <span class="form-text text-muted">Enter your description to briefly introduce yourself to other users</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                <!--end: Form Wizard Step 2-->
                                                <!--begin: Form Wizard Step 3-->
                                                <div class="kt-wizard-v1__content" data-ktwizard-type="step-content">
                                                    <div class="kt-heading kt-heading--md">Setup Password</div>
                                                    <div class="kt-separator kt-separator--height-xs"></div>
                                                    <div class="kt-form__section kt-form__section--first">
                                                        <div class="row">
                                                            <div class="col-xl-6">
                                                                <div class="form-group">
                                                                    <label>Password:</label>
                                                                    <input type="password" class="form-control" name="Password" id="Password" placeholder="Enter password">
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-6">
                                                                <div class="form-group">
                                                                    <label>Confirm Password:</label>
                                                                    <input type="password" class="form-control" name="Confirmation" placeholder="Confirm Password">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!--end: Form Wizard Step 3-->

                                                <!--begin: Form Wizard Step 4-->
                                                <div class="kt-wizard-v1__content" data-ktwizard-type="step-content">
                                                    <div class="kt-heading kt-heading--md">Confirmation</div>
                                                    <div class="kt-separator kt-separator--height-sm"></div>
                                                    <div class="kt-form__section kt-form__section--first">
                                                        <div class="form-group">
                                                            <label class="kt-checkbox">
                                                                <input type="checkbox" name="accept" value="1"> Click here to indicate that you have read and agree to the terms presented in the <a href="javascript:;">Terms and Conditions</a> agreement
                                                                <span></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!--end: Form Wizard Step 4-->
                                                <!--begin: Form Actions -->
                                                <div class="kt-form__actions">
                                                    <div class="btn btn-outline-brand btn-md btn-tall btn-wide btn-bold btn-upper" data-ktwizard-type="action-prev">
                                                        Previous
                                                    </div>
                                                    <button class="btn btn-brand btn-md btn-tall btn-wide btn-bold btn-upper" data-ktwizard-type="action-submit" type="button" onclick="submitForm()">Submit</button>
                                                        <button class="btn btn-brand btn-md btn-tall btn-wide btn-bold btn-upper" id="next" data-ktwizard-type="action-next" type="button">Next Step</button>
                                                    <script>
                                                        function submitForm() {

                                                            var form = document.getElementById("kt_form");
                                                            var formData = new FormData(form);

                                                            var xmlHttp = new XMLHttpRequest();

                                                            //设置请求状态变化时触发的事件
                                                            xmlHttp.onreadystatechange = function(){
                                                                //如果请求状态码为4，说明请求已经完成，响应已经就绪
                                                                if(xmlHttp.readyState == 4){
                                                                    //响应状态码为200，响应完成
                                                                    if(xmlHttp.status == 200){
                                                                        //获取服务器返回的信息
                                                                        var data = xmlHttp.responseText;
                                                                        //判断返回的信息，输出响应的提示信息
                                                                        if(data == 0){
                                                                            swal.fire({
                                                                                "title": "Success",
                                                                                "text": "You have successfully registered!",
                                                                                "type": "success",
                                                                                "confirmButtonClass": "btn btn-secondary"
                                                                            });
                                                                        }else{
                                                                            swal.fire({
                                                                                "title": "Error",
                                                                                "text": "There is blank in your submission. Please fill it.",
                                                                                "type": "error",
                                                                                "confirmButtonClass": "btn btn-secondary m-btn m-btn--wide"
                                                                            });
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            //创建连接
                                                            xmlHttp.open("POST","Register");

                                                            //发送请求
                                                            xmlHttp.send(formData);
                                                        }
                                                    </script>
                                                </div>
                                                <!--end: Form Actions -->
                                            </form>

                                            <!--end: Form Wizard Form-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- end:: Content -->
                    </div>
                </div>
            </div>

            <!-- begin:: Footer -->
            <%@include file="../layout/FooterV1.jsp"%>

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
    // Class definition
    var KTWizardDemo = function () {
        // Base elements
        var wizardEl;
        var formEl;
        var validator;
        var wizard;

        // Private functions
        var initWizard = function () {
            // Initialize form wizard
            wizard = new KTWizard('kt_wizard_v4', {
                startStep: 1,
                clickableSteps: true //Enable/disable manually clicking step titles
            });

            // Validation before going to next page
            wizard.on('beforeNext', function (wizardObj) {
                if (validator.form() !== true) {
                    wizardObj.stop(); // don't go to the next step
                }
            });

            wizard.on('beforePrev', function (wizardObj) {
                if (validator.form() !== true) {
                    wizardObj.stop(); // don't go to the next step
                }
            });

            // Change event
            wizard.on('change', function (wizard) {
                KTUtil.scrollTop();
            });
        }

        var initValidation = function () {
            validator = formEl.validate({
                // Validate only visible fields
                ignore: ":hidden",

                // Validation rules
                rules: {
                    //= Client Information(step 1)
                    Username: {
                        required: true,
                        minlength:5,

                    },
                    Email: {
                        required: true,
                        email: true
                    },
                    OTP: {
                        required: true,
                        minlength: 6,
                        maxlength:6,
                    },
                    Password: {
                        required: true,
                        minlength:6,
                    },
                    Confirmation:{
                        required: true,
                        equalTo:"#Password"
                    },
                    //= Client Information(step 2)
                    LN: {
                        required: true,
                    },
                    FN: {
                        required: true,
                    },

                    //= Client Information(step 3)
                    // Billing Information
                    radioGender: {
                        required: true
                    },

                    //= Confirmation(step 4)
                    accept: {
                        required: true
                    }
                },

                // Validation messages
                messages: {
                    accept: {
                        required: "You must accept the Terms and Conditions agreement!"
                    },
                    Username: {
                        required: "You must have a username!",
                        minlength: "At least 5 characters are required!"
                    },
                    Password: {
                        minlength: "At least 6 characters are required!"
                    },
                    Confirmation: {
                        equalTo: "The password does not match the previous one!"
                    }
                },
                errorElement:'div',
                errorClass:'invalid-feedback',
                errorPlacement: function (error, element) {
                    if (element.attr("name") == "radioGender") {
                        $("#errorGender").text($(error).text());
                    }
                    else {
                        error.insertAfter(element);
                    }
                },

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

        return {
            // public functions
            init: function () {
                wizardEl = KTUtil.get('kt_wizard_v4');
                formEl = $('#kt_form');

                initWizard();
                initValidation();
            }
        };
    }();

    document.addEventListener('DOMContentLoaded', function(){
        // your code goes here
        KTWizardDemo.init()
    }, false);

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