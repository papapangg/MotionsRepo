*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem
Library				DateTimeTZ
Resource            ../Objects/Common/Login_Page.robot
Resource            ../Objects/Common/Common.robot
Resource            ../Objects/Common/Header_Bar.robot
Resource            ../Objects/Common/Mobile.robot
Resource            ../Objects/Common/Dashboard.robot
Resource            ../Objects/Common/Claim_Detail.robot
Resource            ../Step_Definition/Common.robot
Resource            ../Step_Definition/Mobile.robot

*** Keywords ***
Navigate to Dashboard
	Wait and Click Element    ${HB_Dashboard}
	Wait Until Page Contains Element    ${DB_Search_Btn}	60

Verify_AI_Status
	[Arguments]		${status}
	Element Text Should Be    ${DB_Staff_Admin_AI_Status}    ${status}

Verify_V_Status
	[Arguments]		${status}
	Element Text Should Be    ${DB_Staff_Admin_V_Status}    ${status}

Verify_Case_Number
	Element Text Should Be    ${DB_Case_Number}    ${Booking_Number}-${Last_name}

Verify_Booking_Number
	Element Text Should Be    ${DB_Booking_No}    ${Booking_Number}

Verify_Last_Name
	Element Text Should Be    ${DB_Last_Name}    ${Last_name}

Verify_Created_Date
	${date} = 	Get Utc Timestamp    locale=en_SG    time_format=dd.LL.y
	Element Text Should Be    ${DB_Created_Date}    ${date}

Verify_WorldTracer_Number
	Element Text Should Be    ${DB_WT_Number}    ${WorldTracer_Number}

Verify_Bag_Tag_Number
	Element Text Should Be    ${DB_Bag_Tag_No}    ${Bag_Tag_Number}


Add_WorldTracer_Number
	Click Element    ${CD_WorldTracer_Number}
	Wait and Input Text    ${CD_WorldTracer_Number}    ${WorldTracer_Number}
	Wait and Click Element    ${CD_Bag_Tag_Number}

Add_Bag_Tag_Number
	Click Element    ${CD_Bag_Tag_Number}
	Wait and Input Text    ${CD_Bag_Tag_Number}    ${Bag_Tag_Number}
	Wait and Click Element		${CD_WorldTracer_Number}

Add_Damage_Assessment
	${IsElementVisible}=	Run Keyword And Return Status    Element Should Be Visible    ${CD_Add_Damage_Btn}
	Log To Console    ${IsElementVisible}
	IF	${IsElementVisible} == True
		Add_A_New_Damage_Assessment
	ELSE
		Unselect_Assessment_Reviewed
		Add_A_New_Damage_Assessment
	END

Delete_Damage_Assessment
	Wait and Click Element    ${CD_Assessment_Table_Delete_Btn}
	Wait and Click Element    ${CD_Popup_Delete_Assessment_Yes_Btn}
	Page Should Not Contain Element    ${CD_Assessment_Table_Delete_Btn}


Add_A_New_Damage_Assessment
	Wait and Click Element    	${CD_Add_Damage_Btn}
	Wait and Click Element    	${CD_Popup_Damage_Area}
	Wait and Click Element    	${CD_Popup_Damage_Area_Body}
	Wait and Click Element    	${CD_Popup_Damage_Issue}
	Wait and Click Element    	${CD_Popup_Damage_Issue_Crack}
	Wait and Click Element    	${CD_Popup_Damage_Confidence}
	Wait and Input Text    	  	${CD_Popup_Damage_Confidence}		99
	Wait and Click Element    	${CD_Popup_Damage_Treatment}
	Wait and Click Element    	${CD_Popup_Damage_Treatment_Replaceable}
	Wait and Click Element		${CD_Add_Damage_Submit_Btn}
	Wait Until Page Contains Element    ${CD_Assessment_Table}		60

Select_Assessment_Reviewed
	Wait and Click Element    	${CD_Assessment_Reviewed_Btn}
	Wait Until Page Contains Element    ${CD_Assessment_Reviewed_Confirm_Message}	60
	Element Should Contain    ${CD_Assessment_Reviewed_Confirm_Message}    Would you like to mark Assessment Reviewed to this case?
	Wait and Click Element    	${CD_Assessment_Reviewed_Confirm_Yes_Btn}
	Sleep    2
	Page Should Not Contain Element    ${CD_Assessment_Table_Delete_Btn}
	Element Should Contain    ${CD_Vendor_V_Status}		DONE

Unselect_Assessment_Reviewed
	Wait and Click Element    	${CD_Assessment_Reviewed_Btn}
	Wait Until Page Contains Element    ${CD_Assessment_Reviewed_Confirm_Message}	60
	Element Should Contain    ${CD_Assessment_Reviewed_Confirm_Message}		Would you like to unmark Assessment Reviewed to this case?
	Wait and Click Element    	${CD_Assessment_Reviewed_Confirm_Yes_Btn}
	Sleep    2
	Page Should Contain Element    ${CD_Assessment_Table_Delete_Btn}
	Element Should Contain    ${CD_Vendor_V_Status}		NEW

Select_Unselect_Assessment_Reviewed
	${IsElementVisible}=	Run Keyword And Return Status    Element Should Be Visible    ${CD_Add_Damage_Btn}
	Log To Console    ${IsElementVisible}
	IF	${IsElementVisible} == True
		Select_Assessment_Reviewed
	ELSE
		Unselect_Assessment_Reviewed
	END


Verify_Search_Function
	[Arguments]		${Search_Option}	${Search_Value}
	Wait and Click Element    ${DB_Search_Option}
	Wait and Click Element    ${Search_Option}
	Wait and Input Text    ${DB_Filter_Value}    ${Search_Value}
	Wait and Click Element    ${DB_Search_Btn}
	Page Should Contain Element    ${DB_Case_Number}
	Page Should Not Contain Element    ${DB_Claim_Table_Round_2}


Login with Invalid Account
	[Arguments]   ${Email}    ${Password}
	Wait Until Page Contains Element    ${LP_Email}		60
	Input Text	${LP_Email}  ${Email}
	Input Text	${LP_Password}  ${Password}
	Click Button	${LP_Login_btn}
	Element Should Be Visible	${Login_flag_msg}

Open Claim Detail
	Wait and Click Element    ${DB_Staff_Admin_View_Detail}

Vendor_Open_Claim_Detail
	Wait and Click Element    ${DB_Vendor_View_Detail}

Delete Claim on WP
	Login SIA With Account    ${SIA_Admin}    ${Password}
	Open Claim Detail
	Wait and Click Element    ${CD_Delete_Btn}
	Wait and Click Element    ${CD_Delete_Popup_Yes_Btn}
	Wait Until Page Contains Element    ${DB_Search_Btn}	60
	Page Should Not Contain Element    	${DB_Staff_Admin_AI_Status}
	Close All Browsers

Staff_Verify_V_Status
	[Arguments]		${V_Status}
	Element Should Contain    ${DB_Staff_Admin_V_Status}    ${V_Status}
