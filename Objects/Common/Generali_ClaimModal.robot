*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${Claim_Number}       //*[@id="claim_claim_number"]
${Claim_Region}       //*[@id="claim_region"]
${Claim_LossDate}     //*[@id="dateselection"]
${Claim_Category}     //*[@id="claim_category"]
${Claim_FirstName}    //*[@id="claim_claimant_firstname"]
${Claim_LastName}     //*[@id="claim_claimant_lastname"]
${Claim_Email}        //*[@id="claim_claimant_phone"]
${Claim_Assignee}     //*[@id="claim_assignee_id"]
${Claim_FotoApp}      //*[@id="claim_capture_option_photo_app"]
${Claim_LiveVideo}    //*[@id="claim_capture_option_live_video_inspection"]
${Claim_SendButton}   //*[@id="new_claim"]/div[6]/div/input
${Vid_Verification}   //*[@id="messagesContainer"]

#NotificationFlags
${Notif_Schaden}      //*[@id="new_claim"]/div[1]/div[1]/div/div/span
${Notif_Region}       //*[@id="new_claim"]/div[1]/div[2]/div/div/span
${Notif_Vorname}      //*[@id="new_claim"]/div[3]/div[1]/div/div/span
${Notif_Nachname}     //*[@id="new_claim"]/div[3]/div[2]/div/div/span
${Notif_EmailAdd}     //*[@id="new_claim"]/div[4]/div[1]/div/div/span
${Notif_Zugewies}     //*[@id="new_claim"]/div[4]/div[2]/div/div/span
