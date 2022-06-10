*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${UsernameField}           //*[@id="user_email"]
${PasswordField}           //*[@id="user_password"]
${LoginButton}             //*[@id="new_user"]/div[3]/div[2]/input
${ForgotPasswordLink}      //*[@id="claim-content-block"]/div/div/div/div[3]/a
${CheckBox}                //*[@id="user_remember_me"]
${ForgotEmailField}        //*[@id="user_email"]
${SendNewPasswordLink}     //*[@id="new_user"]/div[2]/input
${EmailResetNotification}  //*[@id="content_wrapper"]/div[1]/p
