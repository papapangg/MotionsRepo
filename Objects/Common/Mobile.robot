*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${MB_Booking_Number}        //*[@id="claim_booking_number"]
${MB_Last_Name}             //*[@id="claim_last_name"]
${MB_Submit_btn}            //*[@id="new_claim"]//input[@type="submit"]
${MB_Proceed_btn}           //*[@id="accept-terms-conditions"]/div/a
${MB_Term_Checkbox}         //*[@id="iAgreeCheckbox"]
${MB_Img_TopView}           //*[@id="photos-controller"]/div[1]/div/div/div[1]/div/div[2]/div[2]/button
${MB_Img_FrontView}         //*[@id="photos-controller"]//div[@data-role="front_view"]//button//..
${MB_Img_BackView}          //*[@id="photos-controller"]//div[@data-role="back_view"]//button//..
${MB_Img_BottomView}        //*[@id="photos-controller"]//div[@data-role="bottom_view"]//button//..
${MB_Img_Additional}        //*[@id="photos-controller"]//div[@data-role="additional_photo"]//button//..
${MB_Agree_Cbx}             //*[@id="iAgreeCheckbox"]
${MB_Baggage_Brand}         //*[@id="claim_baggage_brand"]
${MB_Baggage_1st_Brand}     //*[@class="simple_form edit_claim"]//ul/li[1]
${MB_Submit_btn_Step3}      //*[@id="wrapper"]//input[@type="submit"]
