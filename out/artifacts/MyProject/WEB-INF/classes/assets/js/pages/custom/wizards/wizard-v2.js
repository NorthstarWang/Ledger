/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "../src/assets/js/pages/custom/wizards/wizard-v2.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "../src/assets/js/pages/custom/wizards/wizard-v2.js":
/*!**********************************************************!*\
  !*** ../src/assets/js/pages/custom/wizards/wizard-v2.js ***!
  \**********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("// Class definition\r\nvar KTWizardDemo = function () {\r\n    // Base elements\r\n    var wizardEl;\r\n    var formEl;\r\n    var validator;\r\n    var wizard;\r\n\r\n    // Private functions\r\n    var initWizard = function () {\r\n        // Initialize form wizard\r\n        wizard = new KTWizard('kt_wizard_v2', {\r\n            startStep: 1,\r\n            clickableSteps: true //Enable/disable manually clicking step titles\r\n        });\r\n\r\n        // Validation before going to next page\r\n        wizard.on('beforeNext', function(wizardObj) {\r\n            if (validator.form() !== true) {\r\n                wizardObj.stop();  // don't go to the next step\r\n            }\r\n        });\r\n\r\n        wizard.on('beforePrev', function(wizardObj) {\r\n\t\t\tif (validator.form() !== true) {\r\n\t\t\t\twizardObj.stop();  // don't go to the next step\r\n\t\t\t}\r\n\t\t});\r\n\r\n        // Change event\r\n        wizard.on('change', function(wizard) {\r\n            KTUtil.scrollTop();\r\n        });\r\n    }\r\n\r\n    var initValidation = function() {\r\n        validator = formEl.validate({\r\n            // Validate only visible fields\r\n            ignore: \":hidden\",\r\n\r\n            // Validation rules\r\n            rules: {\r\n                //= Client Information(step 1)\r\n                username: {\r\n                    required: true\r\n                },\r\n                email: {\r\n                    required: true,\r\n                    email: true\r\n                },\r\n                password: {\r\n                    required: true,\r\n                },\r\n\r\n                //= Client Information(step 2)\r\n                // Profile Details\r\n                address1: {\r\n                    required: true,\r\n                },\r\n                address2: {\r\n                    required: true,\r\n                },\r\n                // Mailing Address\r\n                city: {\r\n                    required: true,\r\n                },\r\n                zip: {\r\n                    required: true,\r\n                },\r\n                state: {\r\n                    required: true,\r\n                },\r\n                country: {\r\n                    required: true,\r\n                },\r\n\r\n                //= Client Information(step 3)\r\n                // Company Details\r\n                company_name: {\r\n                    required: true,\r\n                },\r\n                company_id: {\r\n                    required: true,\r\n                },\r\n                company_email: {\r\n                    required: true,\r\n                },\r\n                company_tel: {\r\n                    required: true,\r\n                },\r\n                'account_communication[]': {\r\n                    required: true\r\n                },\r\n\r\n                //= Client Information(step 4)\r\n                // Billing Information\r\n                billing_card_name: {\r\n                    required: true\r\n                },\r\n                billing_card_number: {\r\n                    required: true,\r\n                    creditcard: true\r\n                },\r\n                billing_card_exp_month: {\r\n                    required: true\r\n                },\r\n                billing_card_exp_year: {\r\n                    required: true\r\n                },\r\n                billing_card_cvv: {\r\n                    required: true,\r\n                    minlength: 2,\r\n                    maxlength: 3\r\n                },\r\n\r\n                //= Confirmation(step 5)\r\n                accept: {\r\n                    required: true\r\n                }\r\n            },\r\n\r\n            // Validation messages\r\n            messages: {\r\n                'account_communication[]': {\r\n                    required: 'You must select at least one communication option'\r\n                },\r\n                accept: {\r\n                    required: \"You must accept the Terms and Conditions agreement!\"\r\n                }\r\n            },\r\n\r\n            // Display error\r\n            invalidHandler: function(event, validator) {\r\n                KTUtil.scrollTop();\r\n\r\n                swal.fire({\r\n                    \"title\": \"\",\r\n                    \"text\": \"There are some errors in your submission. Please correct them.\",\r\n                    \"type\": \"error\",\r\n                    \"confirmButtonClass\": \"btn btn-secondary m-btn m-btn--wide\"\r\n                });\r\n            },\r\n\r\n            // Submit valid form\r\n            submitHandler: function (form) {\r\n\r\n            }\r\n        });\r\n    }\r\n\r\n    var initSubmit = function() {\r\n        var btn = formEl.find('[data-ktwizard-action=\"action-submit\"]');\r\n\r\n        btn.on('click', function(e) {\r\n            e.preventDefault();\r\n\r\n            if (validator.form()) {\r\n                // See: src\\js\\framework\\base\\app.js\r\n                KTApp.progress(btn);\r\n                //KTApp.block(formEl);\r\n\r\n                // See: http://malsup.com/jquery/form/#ajaxSubmit\r\n                formEl.ajaxSubmit({\r\n                    success: function() {\r\n                        KTApp.unprogress(btn);\r\n                        //KTApp.unblock(formEl);\r\n\r\n                        swal.fire({\r\n                            \"title\": \"\",\r\n                            \"text\": \"The application has been successfully submitted!\",\r\n                            \"type\": \"success\",\r\n                            \"confirmButtonClass\": \"btn btn-secondary\"\r\n                        });\r\n                    }\r\n                });\r\n            }\r\n        });\r\n    }\r\n\r\n    return {\r\n        // public functions\r\n        init: function() {\r\n            wizardEl = KTUtil.get('kt_wizard_v2');\r\n            formEl = $('#kt_form');\r\n\r\n            initWizard();\r\n            initValidation();\r\n            initSubmit();\r\n        }\r\n    };\r\n}();\r\n\r\njQuery(document).ready(function() {\r\n    KTWizardDemo.init();\r\n});\r\n\n\n//# sourceURL=webpack:///../src/assets/js/pages/custom/wizards/wizard-v2.js?");

/***/ })

/******/ });