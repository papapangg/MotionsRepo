*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem

*** Variables ***

*** Keywords ***
Add_New_Claim
    [Arguments]      ${Button_AddNewClaim}
    Click Element    ${Button_AddNewClaim}
    Sleep    2s
    Wait Until Element Is Visible    ${Claim_SendButton}
    Input Text       ${Claim_Number}          11345
    Input Text       ${Claim_FirstName}       RFFirstName
    Input Text       ${Claim_LastName}        RDLastName
    Input Text       ${Claim_Email}           vjaymoneymaker@gmail.com
    Sleep    2s
    Click Element    ${Claim_Region}
    Select From List By Label        ${Claim_Region}    Nordost
    Select From List By Label        ${Claim_Category}  Werkstatt
    Select From List By Label        ${Claim_Assignee}  AiVan
    Click Button                     ${Claim_LiveVideo}
    Sleep    2s
    Click Button                     ${Claim_SendButton}
    Wait Until Element Is Visible    ${Vid_Verification}

Add_New_Claim_Negative_BlankFields
    [Arguments]      ${Button_AddNewClaim}
    Click Element    ${Button_AddNewClaim}
    Sleep    2s
    Wait Until Element Is Visible    ${Claim_SendButton}
    Sleep    2s
    Click Element    ${Claim_Region}
    Click Button                     ${Claim_LiveVideo}
    Sleep    2s
    Click Button                     ${Claim_SendButton}
    Wait Until Element Is Visible    ${Notif_Schaden}
    Wait Until Element Is Visible    ${Notif_Region}
    Wait Until Element Is Visible    ${Notif_Vorname}
    Wait Until Element Is Visible    ${Notif_Nachname}
    Wait Until Element Is Visible    ${Notif_EmailAdd}
    Wait Until Element Is Visible    ${Notif_Zugewies}
