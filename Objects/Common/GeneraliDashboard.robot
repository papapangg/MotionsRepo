*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${Gen_Profile}          //*[@id="mc_header"]/div/div[2]/div[1]/div
${Logout_Ausloggen}     //*[@id="mc_header"]/div/div[2]/div[1]/div/ul/li[7]/a
${Button_AddNewClaim}   //*[@id="claim-content-block"]/div[1]/div[2]/a
