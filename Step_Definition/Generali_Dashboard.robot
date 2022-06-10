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

TC_02_SortClaimData
    Click Element    ${Schadennummer}
    Wait Until Element Contains    ${van_test_video}          van test video call 29-03
    Click Element    ${Vorname}
    Wait Until Element Contains    ${vorname_1}               1
    Click Element    ${Nachname}
    Wait Until Element Contains    ${Nachname_Veh}            Veh
    Click Element    ${Kontakt}
    Wait Until Element Contains    ${Kontakt_alexis}          alexis.hanke@gmail.com
    Click Element    ${FotoAppStatus}
    Wait Until Element Contains    ${FotoApp_Fotoeingang}     Fotoeingang
    Click Element    ${Sachbearbeiter}
    Wait Until Element Contains    ${Sachbear_AiVan}          AiVan
    Click Element    ${Erstellungsdatum}
    Sleep    1s
    Click Element    ${Region}
    Wait Until Element Contains    ${Region_nord}             Nord
    Click Element    ${Abteilung}
    Wait Until Element Contains    ${Abtelung_KFZ}            KFZ-Sachverständigenpool
