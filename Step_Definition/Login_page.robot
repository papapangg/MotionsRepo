*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem
Library							DateTimeTZ
Resource            ../Objects/Common/Login_Page.robot
Resource            ../Objects/Common/Common.robot
Resource            ../Objects/Common/Header_Bar.robot
Resource            ../Objects/Common/Mobile.robot
Resource            ../Objects/Common/Claim_Detail.robot
Resource            ../Step_Definition/Common.robot
Resource            ../Step_Definition/Mobile.robot

*** Variables ***

*** Keywords ***

Login_with_Empty_fields
	[Arguments]		${email_msg}	${password_msg}
	Click Button	${LP_Login_btn}
	Element Should Be Visible	${email_msg}
	Element Should Be Visible	${password_msg}

Login_with_Invalid_Account
	[Arguments]   ${Email}    ${Password}
	Wait Until Page Contains Element    ${LP_Email}		60
	Input Text	${LP_Email}  ${Email}
	Input Text	${LP_Password}  ${Password}
	Click Button	${LP_Login_btn}
	Element Should Be Visible	${Login_flag_msg}
