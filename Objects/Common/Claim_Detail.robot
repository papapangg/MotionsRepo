*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${CD_Delete_Btn}                            //*[@id="claim-header"]//a[contains(text(), 'Delete Case')]
${CD_Delete_Popup_Yes_Btn}                  //*[@id="confirmation-modal"]//a
${CD_Delete_Popup_No_Btn}                   //*[@id="confirmation-modal"]//button
${CD_WorldTracer_Number}                    //*[@id="claim_world_tracer"]
${CD_Bag_Tag_Number}                        //*[@id="claim_baggage_tag"]
${CD_Add_Damage_Btn}                        //*[@id="vendor-assessment-content"]/div[1]/div[2]/a
${CD_Popup_Damage_Area}                     //*[@id="assessment_damage_area"]
${CD_Popup_Damage_Area_Body}                //*[@id="assessment_damage_area"]/option[2]
${CD_Popup_Damage_Area_Combi_Lock}          //*[@id="assessment_damage_area"]/option[3]
${CD_Popup_Damage_Area_Retractable_Handle}  //*[@id="assessment_damage_area"]/option[4]
${CD_Popup_Damage_Area_Side_Handle}         //*[@id="assessment_damage_area"]/option[5]
${CD_Popup_Damage_Area_Side_Lock}           //*[@id="assessment_damage_area"]/option[6]
${CD_Popup_Damage_Area_Top_Handle}          //*[@id="assessment_damage_area"]/option[7]
${CD_Popup_Damage_Area_Wheel}               //*[@id="assessment_damage_area"]/option[8]
${CD_Popup_Damage_Area_Zipper}              //*[@id="assessment_damage_area"]/option[9]
${CD_Popup_Damage_Issue}                    //*[@id="assessment_damage_issue"]
${CD_Popup_Damage_Issue_Crack}              //*[@id="assessment_damage_issue"]/option[2]
${CD_Popup_Damage_Issue_Dented}             //*[@id="assessment_damage_issue"]/option[3]
${CD_Popup_Damage_Issue_Fixed_Handle}       //*[@id="assessment_damage_issue"]/option[4]
${CD_Popup_Damage_Issue_Minor_Tear}         //*[@id="assessment_damage_issue"]/option[5]
${CD_Popup_Damage_Issue_Scratched}          //*[@id="assessment_damage_issue"]/option[6]
${CD_Popup_Damage_Issue_Wheel}              //*[@id="assessment_damage_issue"]/option[7]
${CD_Popup_Damage_Issue_worn_out_laminate}  //*[@id="assessment_damage_issue"]/option[8]
${CD_Popup_Damage_Confidence}               //*[@id="assessment_confidence"]
${CD_Popup_Damage_Treatment}                //*[@id="assessment_treatment"]
${CD_Popup_Damage_Treatment_Replaceable}    //*[@id="assessment_treatment"]/option[2]
${CD_Popup_Damage_Treatment_Repairable}     //*[@id="assessment_treatment"]/option[3]
${CD_Popup_Damage_Treatment_Wear_and_Tear}  //*[@id="assessment_treatment"]/option[4]
${CD_Add_Damage_Submit_Btn}                 //*[@id="new_assessment"]//input[@value="Submit"]
${CD_Assessment_Table}                      //*[@id="vendor-assessment-table"]//table/tbody/tr
${CD_Assessment_Table_Delete_Btn}           //*[@id="vendor-assessment-table"]//tr/td[5]/a
${CD_Assessment_Reviewed_Btn}               //*[@id="claim-header"]/div/div[1]/div[2]/div/a
${CD_Assessment_Reviewed_Confirm_Message}   //*[@id="confirmation-modal"]/div/div/div/div/div[2]
${CD_Assessment_Reviewed_Confirm_Yes_Btn}   //*[@id="confirmation-modal"]//div[1]/a
${CD_Assessment_Reviewed_Confirm_No_Btn}    //*[@id="confirmation-modal"]//div[2]/button
${CD_Vendor_V_Status}                       //*[@id="claim-info"]//div[6]/div[2]/div
${CD_Popup_Delete_Assessment_Yes_Btn}       //*[@id="confirmation-modal"]//a
${CD_Popup_Delete_Assessment_No_Btn}        //*[@id="confirmation-modal"]//button
