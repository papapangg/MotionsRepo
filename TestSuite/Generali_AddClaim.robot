*** Settings ***
Test Setup          Set Selenium Speed  0.5
Test Teardown       Close All Browsers
Library             SeleniumLibrary
Library             OperatingSystem
#Library             String
#Library             DatabaseLibrary
Resource    ../Objects/Common/GeneraliCredentials.robot
Resource    ../Objects/Common/GeneraliLoginPage.robot
Resource    ../Step_Definition/GeneraliLoginStep.robot
Resource    ../Objects/Common/Generali_ClaimModal.robot
Resource    ../Objects/Common/GeneraliDashboard.robot
Resource    ../Step_Definition/Generali_AddClaimStep.robot

*** Test Cases ***
Login Generali Happy Path
    Navigate_to_Landing_Page    GeneraliCredentials
    Login_Happy_Path            ${Generali_Username}  ${Password}
    Add_New_Claim               ${Button_AddNewClaim}
    Sleep    2s

Login Generali Negative Path
    Navigate_to_Landing_Page    GeneraliCredentials
    Login_Happy_Path            ${Generali_Username}  ${Password}
    Add_New_Claim_Negative_BlankFields    ${Button_AddNewClaim}
    Sleep    2s
