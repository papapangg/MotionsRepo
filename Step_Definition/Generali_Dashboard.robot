*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem

*** Variables ***

*** Keywords ***
TC_01_DataSearch
    Select From List By Label    ${Search_Option}   Nachname
    Input Text      ${Search_Field}     Hanke
    Click Button    ${Search_Button}
    Wait Until Element Is Visible    ${Nickname_Verification}
