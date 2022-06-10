*** Settings ***
Test Setup          Set Selenium Speed  0.5
Test Teardown       Close All Browsers
Library             SeleniumLibrary
Library             OperatingSystem
#Library             String
#Library             DatabaseLibrary
Resource       ../Objects/Common/GeneraliLoginPage.robot
Resource       ../Objects/Common/GeneraliDashboard.robot
Resource       ../Step_Definition/GeneraliLoginStep.robot
Resource       ../Step_Definition/Generali_Dashboard.robot
Resource       ../Objects/Common/GeneraliCredentials.robot


*** Test Cases ***
Dashboard_DataSearch
    Navigate_to_Landing_Page    GeneraliCredentials
    Login_Happy_Path            ${Generali_Username}
    TC_01_DataSearch
