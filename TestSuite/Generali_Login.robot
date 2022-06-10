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

*** Test Cases ***
Login Generali Happy Path
    Navigate_to_Landing_Page    GeneraliCredentials
    Login_Happy_Path            ${Generali_Username}  ${Password}

Login Generali Negative Path
    Navigate_to_Landing_Page    GeneraliCredentials
    Login_Negative_Path         ${LoginButton}

Logout Generali
    Navigate_to_Landing_Page    GeneraliCredentials
    Login_Happy_Path            ${Generali_Username}  ${Password}
    Sleep    2s
    Logout_Generali             ${Logout_Ausloggen}
    Sleep    3s

Forgot_Password Happy Path
    Navigate_to_Landing_Page     GeneraliCredentials
    Forgot_Password_HappyPath    ${ForgotPasswordLink}
    Sleep    2s

Forgot_Password NegativePath
    Navigate_to_Landing_Page     GeneraliCredentials
    Forgot_Password_NegativePath  ${ForgotPasswordLink}
    Sleep    2s
