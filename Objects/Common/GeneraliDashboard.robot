*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${Gen_Profile}          //*[@id="mc_header"]/div/div[2]/div[1]/div
${Logout_Ausloggen}     //*[@id="mc_header"]/div/div[2]/div[1]/div/ul/li[7]/a
${Button_AddNewClaim}   //*[@id="claim-content-block"]/div[1]/div[2]/a
${Search_Option}        //*[@id="virtual_search_claim_name"]
${Search_Field}         //*[@id="virtual_search_claim_value"]
${Search_Button}        //*[@id="new_virtual_search_claim"]/div[2]/div[2]/div/input

#Dashboard
${Schadennummer}        //*[@id="claims_table"]/thead/tr/th[1]
${Vorname}              //*[@id="claims_table"]/thead/tr/th[2]
${Nachname}             //*[@id="claims_table"]/thead/tr/th[3]
${Kontakt}              //*[@id="claims_table"]/thead/tr/th[4]
${FotoAppStatus}        //*[@id="claims_table"]/thead/tr/th[5]
${Sachbearbeiter}       //*[@id="claims_table"]/thead/tr/th[6]
${Erstellungsdatum}     //*[@id="claims_table"]/thead/tr/th[7]
${Region}               //*[@id="claims_table"]/thead/tr/th[8]
${Abteilung}            //*[@id="claims_table"]/thead/tr/th[9]

#Verification_Dashboard
${van_test_video}       //*[@id="claims_table"]/tbody/tr[1]/td[1]
${vorname_1}            //*[@id="claims_table"]/tbody/tr[1]/td[2]
${Nachname_Veh}         //*[@id="claims_table"]/tbody/tr[1]/td[3]
${Kontakt_alexis}       //*[@id="claims_table"]/tbody/tr[1]/td[4]
${FotoApp_Fotoeingang}  //*[@id="claims_table"]/tbody/tr[1]/td[5]
${Sachbear_AiVan}       //*[@id="claims_table"]/tbody/tr[1]/td[6]
${Erstellungsdatum}     //*[@id="claims_table"]/tbody/tr[1]/td[7]
${Region_nord}          //*[@id="claims_table"]/tbody/tr[1]/td[8]
${Abtelung_KFZ}         //*[@id="claims_table"]/tbody/tr[1]/td[9]


#Verification
${Nickname_Verification}    //*[@id="claims_table"]/tbody/tr[1]/td[3]
