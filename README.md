# Ledger

## Index
- [About](#about)
- [Getting Started](#getting-started)
- [Build using](#build-using)
- [Features](#features)
- [Author](#author)

## About

This web application is for accounting purpose which has same functions as a digital ledger. The app also has a functional user system that contains functions such as registration, log in and personal information customization. The original usage of this application is to work as a accounting book for individuals to record their investments.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

#### Prerequisites

To be able to run the application, **Java SDK** and **Tomcat** are required.(Recommended version: Java 14 + Tomcat 9), Maven is required to configure.
Database can be generated using the scripts in /database_script.txt

## Build using

- MySQL - Database
- Jakarta Server Pages(JSP)
- Servlet
- Tomcat - Server
- Bootstrap 4 Keen Theme - Web Framework

## Features

- User System

  - Sign Up

    - Sign up wizard

      User's registration is guided through wizard form that is validated by **[Form Validation](https://formvalidation.io/)**.

    - Sweet Alert

       The **[sweetalert2](https://sweetalert2.github.io/)** is used to verify whether the username is available.

    - Email OTP Verification

      Users will be required to key in the OTPs received by their emails.

  - Login

    - Sign in

      Users use their username and password that recorded in database after registrations to log in to the system so as to get the permissions to use the ledger.

  - Profile

    - Change personal information

      Users can change their contact information and their icons by uploading their own images.

- Application

  - Accounting

    - Add ledger

      User can create a ledger with a title and a customizable category with multiple headers and preview the ledger in table form.

    - Ledgers

      - New Data

        User can add rows of data in the ledger that has been created. Every column will be compulsory. The data tables are generated using **[datatables.net](https://datatables.net/)** and the ledger index is managed by **[jstree](https://www.jstree.com/)**.

      - Print

        User can print the ledger in PDF, CSV & Excel form.

## Author

- [Wang Yang](https://github.com/NorthstarWang) - Idea and development
