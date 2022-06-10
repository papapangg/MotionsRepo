*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${HB_User}              //*[@id="userMenu"]
${HB_Dashboard}         //*[@id="wrapper"]//a[contains(text(), 'Dashboard')]
