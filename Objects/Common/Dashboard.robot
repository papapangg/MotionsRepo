*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${DB_WT_Number}                     //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[1]
${DB_Bag_Tag_No}                    //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[2]
${DB_Case_Number}                   //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[3]
${DB_Booking_No}                    //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[4]
${DB_Last_Name}                     //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[5]
${DB_Created_Date}                  //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[6]
${DB_Staff_Admin_AI_Treatment}      //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[7]
${DB_Staff_Admin_V_Treatment}       //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[8]
${DB_Staff_Admin_AI_Status}         //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[9]
${DB_Staff_Admin_V_Status}          //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[10]
${DB_Staff_Admin_View_Detail}       //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[11]
${DB_Vendor_V_Treatment}            //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[7]
${DB_Vendor_V_Status}               //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[8]
${DB_Vendor_View_Detail}            //*[@id="wrapper"]//td[contains(text(), 'Auto_QA_Team')]/../td[9]
${DB_Search_Btn}                    //*[@id="new_filter"]//input[@value="Search"]
${DB_Search_Option}                 //*[@id="filter_field"]
${DB_Search_Option_Case_No}         //*[@id="filter_field"]/option[@value="claim_number"]
${DB_Search_Option_Booking_No}      //*[@id="filter_field"]/option[@value="booking_number"]
${DB_Search_Option_Last_Name}       //*[@id="filter_field"]/option[@value="last_name"]
${DB_Search_Option_V_Treatment}     //*[@id="filter_field"]/option[@value="vendor_treatment"]
${DB_Search_Option_V_Status}        //*[@id="filter_field"]/option[@value="vendor_status"]
${DB_Search_Option_WT_No}           //*[@id="filter_field"]/option[@value="world_tracer"]
${DB_Search_Option_Bag_Tag_No}      //*[@id="filter_field"]/option[@value="baggage_tag"]
${DB_Filter_Value}                  //*[@id="filter_value"]
${DB_Claim_Table_Round_2}           //*[@id="wrapper"]//table/tbody/tr[2]
