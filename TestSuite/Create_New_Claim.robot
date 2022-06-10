*** Settings ***
Test Setup          Set Selenium Speed  0.5
Test Teardown       Close All Browsers
Suite Teardown      Delete Claim on WP
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


Create_a_New_Claim_Step1_And_Verify_Status_New_on_WP
    #Log To Console    ${path}
    Open Mobile Site
    Create a New Claim Step 1
    Login SIA With Account    ${SIA_Staff}    ${Password}
    Verify_V_Status     New
    Verify_AI_Status    New
    Verify_Last_Name
    Verify_Case_Number
    Verify_Booking_Number
    Verify_Created_Date

Add_WorldTracer_Number_And_Bag_Tag_Number
    Login SIA With Account    ${SIA_Staff}    ${Password}
    Open Claim Detail
    Add_WorldTracer_Number
    Add_Bag_Tag_Number
    Navigate to Dashboard
    Verify_WorldTracer_Number
    Verify_Bag_Tag_Number

Vendor_Add_Damage_Assessment
    Login SIA With Account    ${SIA_Vendor}    ${Password}
    Verify_Search_Function    ${DB_Search_Option_Case_No}    QATEAM-Auto_QA_Team
    Open Claim Detail
    Add_Damage_Assessment
    Select_Assessment_Reviewed


Verify_Search_Function_On_Dashboard_Screen
    Login SIA With Account    ${SIA_Staff}    ${Password}
    Verify_Search_Function    ${DB_Search_Option_Case_No}    ${Booking_Number}-${Last_name}
