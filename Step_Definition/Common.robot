*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem
#Library             DatabaseLibrary
#Library             DateTimeTZ
Resource            ../Objects/Common/Login_Page.robot
Resource            ../Objects/Common/Common.robot
Resource            ../Objects/Common/Header_Bar.robot
Resource            ../Step_Definition/Common.robot

*** Variables ***

*** Keywords ***

Navigate_to_Landing_Page
    [Arguments]     ${Alias}
    Open Browser    ${URL_Staging}    ${BROWSER}    ${Alias}
    Maximize Browser Window

Login_Negative_Flow
    [Arguments]		${Login_Error_msg}
    Click Button	${LP_Login_btn}
    Element Should Be Visible	${Login_Error_msg}
    Input Text	${LP_Email}  ${SIA_Vendor}
  	Input Text	${LP_Password}  "test"
  	Click Button	${LP_Login_btn}
  	Element Should Be Visible	${Login_Error_msg}

Login_WITH_SIA_Account
    [Arguments]     ${Email}    ${Password}     ${Alias}
    Navigate_to_Landing_Page    ${Alias}
    Wait Until Page Contains Element    ${LP_Email}    60
    Input Text      ${LP_Email}          ${Email}
    Input Text      ${LP_Password}       ${Password}
    Click Button    ${LP_Login_btn}
    Wait Until Page Contains Element    ${HB_User}    60
    Sleep    5s

Navigate to Page
    [Arguments]     ${locator}
    Wait and Click Element    ${locator}

Open Page
    [Arguments]     ${locator}
    Mouse Over      ${HB_User}
    Wait and Click Element    ${locator}

Open Insurer Detail
    [Arguments]     ${locator}
    Scroll To Element    ${locator}
    Click Element    ${locator}

Select Language
    [Arguments]     ${locator}
    Mouse Over      ${HB_Language}
    Wait and Click Element    ${locator}

Select Pagination
    [Arguments]     ${locator}
    Scroll to Bottom of The Page
    Wait and Click Element      ${locator}

Wait and Input Text
    [Arguments]    ${locator}    ${txt_value}
    Wait Until Element Is Visible     ${locator}    60
    Input Text    ${locator}    ${txt_value}

Click Element and Input Text
    [Arguments]    ${locator}    ${txt_value}
    Click Element    ${locator}
    Input Text    ${locator}    ${txt_value}

Wait and Click Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible     ${locator}    60
    Click Element    ${locator}

Wait and Scroll Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible     ${locator}    60
    Scroll Element Into View    ${locator}

Scroll To Element
    [Arguments]     ${locator}
    Wait Until Element Is Visible     ${locator}    60
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})

Scroll to Bottom of The Page
    Sleep    2
    Execute Javascript	window.scrollTo(0,document.body.scrollHeight)
