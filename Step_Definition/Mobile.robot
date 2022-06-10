*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem
Library             pywinauto
Library				DateTimeTZ
Library             ../Data_Files/HH.py
Resource            ../Objects/Common/Login_Page.robot
Resource            ../Objects/Common/Common.robot
Resource            ../Objects/Common/Header_Bar.robot
Resource            ../Objects/Common/Mobile.robot
Resource            ../Objects/Common/Claim_Detail.robot
Resource            ../Step_Definition/Common.robot
Resource            ../Step_Definition/Mobile.robot
#Resource            ../Data_Files/HH.py

*** Variables ***
${path}             ${CURDIR}\\Images
${Last_name}        Auto_QA_Team

*** Keywords ***
Open Mobile Site
    Open Browser    ${URL_Mobile}   ${BROWSER}      Mobile
    Set Window Size    375    812
    Wait Until Element Is Enabled    ${MB_Booking_Number}   60

Create a New Claim Step 1
    ${Booking_Number}    Generate Random String	6	[LETTERS]
    Set Global Variable    ${Booking_Number}    ${Booking_Number}
	Wait and Input Text    ${MB_Booking_Number}    ${Booking_Number}
	Input Text    ${MB_Last_Name}    ${Last_name}
	Click Button    ${MB_Submit_btn}
	Wait Until Page Contains Element    ${MB_Proceed_btn}      60

Create a New Claim Step 2
    Wait and Click Element   ${MB_Img_TopView}
    upload_file     ${CURDIR}\\Images\\1.jpg
    Choose File    ${MB_Img_TopView}   C:\Users\kimja\Documents\qa-automation-projects\Step_Definition\Images\1.jpg
    Sleep    2
    Wait and Click Element   ${MB_Img_FrontView}
    upload_file     ${CURDIR}\\Images\\4.jpg
    Sleep    2
    Scroll to Bottom of The Page
    Sleep    2
    Wait and Click Element   ${MB_Img_BottomView}
    upload_file     ${CURDIR}\\Images\\2.jpg
    Sleep    2
    Wait and Click Element   ${MB_Img_BackView}
    upload_file     ${CURDIR}\\Images\\3.jpg
    Sleep    2
    Wait and Click Element    ${MB_Agree_Cbx}
    Wait and Click Element    ${MB_Proceed_btn}
    Wait Until Page Contains Element    ${MB_Submit_btn_Step3}      60

Create a New Claim Step 3
    Wait and Click Element      ${MB_Baggage_Brand}
    Wait and Click Element      ${MB_Baggage_1st_Brand}
    Wait and Click Element      ${MB_Submit_btn_Step3}
    Wait Until Page Contains    Please Rate your Experience
