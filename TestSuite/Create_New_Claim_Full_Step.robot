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
${path}             ${CURDIR}\\Images\\3.jpg

*** Test Cases ***

Create_a_New_Claim_Full_Step_And_Verify_Status_Open_on_WP
    Open Mobile Site
    Create a New Claim Step 1
    Create a New Claim Step 2
    Create a New Claim Step 3
    Login_WITH_SIA_Account    ${SIA_Staff}    ${Password}    "SIA_Staff"
    Verify_V_Status     Open
    Verify_AI_Status    Open
    Verify_Last_Name
    Verify_Case_Number
    Verify_Booking_Number
    Verify_Created_Date
    Open Claim Detail
