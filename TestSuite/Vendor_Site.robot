*** Settings ***
Test Setup          Set Selenium Speed  0.5
Test Teardown       Close All Browsers
#Suite Teardown      Delete Claim on WP
Library             SeleniumLibrary
Library             OperatingSystem
Library             ../Data_Files/HH.py
Library				DateTimeTZ
#Library             String
#Library             DatabaseLibrary
Resource            ../Objects/Common/Login_Page.robot
Resource            ../Objects/Common/Common.robot
Resource            ../Objects/Common/Header_Bar.robot
Resource            ../Objects/Common/Mobile.robot
Resource            ../Objects/Common/Dashboard.robot
Resource            ../Objects/Common/Claim_Detail.robot
Resource            ../Step_Definition/Common.robot
Resource            ../Step_Definition/Mobile.robot
Resource            ../Step_Definition/WebPortal.robot

*** Variables ***

*** Test Cases ***

Vendor_Add_Damage_Assessment
    Login_SIA_With_Account    ${SIA_Vendor}    ${Password}  Vendor
    Verify_Search_Function    ${DB_Search_Option_Case_No}    QATEAM-Auto_QA_Team
    Vendor_Open_Claim_Detail
    Add_Damage_Assessment
    Login_SIA_With_Account    ${SIA_Staff}    ${Password}   Staff
    Verify_Search_Function    ${DB_Search_Option_Case_No}    QATEAM-Auto_QA_Team
    Staff_Verify_V_Status    New
    Switch Browser    Vendor
    Select_Unselect_Assessment_Reviewed
    Switch Browser    Staff
    Reload Page
    Staff_Verify_V_Status    Done
    Switch Browser    Vendor
    Select_Unselect_Assessment_Reviewed
    Switch Browser    Staff
    Reload Page
    Staff_Verify_V_Status    New
    Switch Browser    Vendor
    Reload Page
    Delete_Damage_Assessment
