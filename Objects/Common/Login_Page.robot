*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${LP_Email}             //*[@id="user_email"]
${LP_Password}          //*[@id="user_password"]
${LP_Login_btn}         //*[@id="new_user"]//input[@type="submit"]
${LP_Remember_Me}       //*[@id="user_remember_me"]
${Login_error_msg}     xpath = //*[@id="new_user"]/div[1]/span
${Login_flag_msg}      xpath = //*[@id="main-content-block"]/div[2]/div/div/div[1]/div/div
