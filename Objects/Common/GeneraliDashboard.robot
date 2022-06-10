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


#Verification
${Nickname_Verification}    //*[@id="claims_table"]/tbody/tr[1]/td[3]
