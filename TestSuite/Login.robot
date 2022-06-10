*** Settings ***
Test Setup          Set Selenium Speed  0.5
Test Teardown       Close All Browsers
Library             SeleniumLibrary
Library             OperatingSystem
Library				      DateTimeTZ
#Library             String
#Library             DatabaseLibrary
Resource            ../Objects/Common/Login_Page.robot
Resource            ../Objects/Common/Common.robot
Resource            ../Objects/Common/Header_Bar.robot
Resource            ../Objects/Common/Login_Page.robot
Resource            ../Step_Definition/Common.robot

*** Test Cases ***
Login Happy Flow with SIA Staff
    Navigate_to_Landing_Page    SIA_Staff
    Login_WITH_SIA_Account  ${SIA_Staff}    ${Password}    SIA_Staff

Login Happy Flow with SIA Vendor
    Navigate_to_Landing_Page    SIA_Vendor
    Login_WITH_SIA_Account    ${SIA_Vendor}    ${Password}    SIA_Vendor

Login Happy Flow with SIA Admin
    Navigate_to_Landing_Page    SIA_Admin
    Login_WITH_SIA_Account    ${SIA_Admin}    ${Password}    SIA_Admin

Login Negative Flow
    Navigate_to_Landing_Page    SIA_Admin
  	Login_Negative_Flow    ${Login_error_msg}
