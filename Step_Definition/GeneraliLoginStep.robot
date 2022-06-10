*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem

*** Variables ***

*** Keywords ***
Login_Happy_Path
    Input Text      ${UsernameField}      ${Generali_Username}
    Input Text      ${PasswordField}      ${Password}
    Scroll Element Into View    ${LoginButton}
    Click Button    ${LoginButton}

Navigate_to_Landing_Page
    [Arguments]     ${Alias}
    Open Browser    ${URL_Staging}    ${BROWSER}    ${Alias}
    Maximize Browser Window

Login_Negative_Path
    [Arguments]     ${LoginButton}
    Scroll Element Into View    ${LoginButton}
    Click Button    ${LoginButton}

Logout_Generali
    [Arguments]               ${Gen_Profile}
    Wait Until Page Contains Element    ${Gen_Profile}
    Mouse Over                ${Gen_Profile}
    Wait Until Element Is Visible     ${Logout_Ausloggen}
    Click Element             ${Logout_Ausloggen}

Forgot_Password_HappyPath
    [Arguments]               ${ForgotPasswordLink}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${ForgotPasswordLink}
    Click Element                       ${ForgotPasswordLink}
    Wait Until Page Contains Element    ${ForgotEmailField}
    Input Text    ${ForgotEmailField}   ${Generali_Username}
    Click Element                       ${SendNewPasswordLink}
    Wait Until Element Is Visible       ${EmailResetNotification}

Forgot_Password_NegativePath
    [Arguments]               ${ForgotPasswordLink}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${ForgotPasswordLink}
    Click Element                       ${ForgotPasswordLink}
    Wait Until Page Contains Element    ${ForgotEmailField}
    Click Element                       ${SendNewPasswordLink}
