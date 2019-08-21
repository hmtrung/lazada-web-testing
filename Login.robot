*** Settings ***
Library       SeleniumLibrary
Variables     Data.yaml  

*** Keywords ***
Open Login Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Click Link    login 

Input Email
    [Arguments]    ${input}
    Input Text    xpath://input[@placeholder="Please enter your Phone Number or Email"]    ${input}

Input Password
    [Arguments]    ${password}
    Input Text    xpath://input[@placeholder="Please enter your password"]    ${password}        
    
Submit Credentials
    Click Button    LOGIN
    
Open Sign Up Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Click Link    signup     

Input Phone Number To Sign Up
    [Arguments]    ${phone}
    Input Text    xpath://input[@placeholder="Please enter your phone number"]    ${phone}
    
Input Email To Sign Up
    [Arguments]    ${phone}
    Input Text    xpath://input[@placeholder="Please enter your email"]    ${phone}
    
Slide To Get Email Code
    Drag And Drop By Offset    xpath://span[@id='nc_2_n1z']    400    0
    
Slide To Get SMS Code
    Drag And Drop By Offset    xpath://span[@id='nc_2_n1z']    400    0
    
Input Email Validation Code
    [Arguments]    ${code}
    Input Text    xpath://input[@placeholder='6 digits']    ${code}
    
Input Full Name To Sign Up
    [Arguments]    ${name}
    Input Text    xpath://input[@placeholder="First Last"]    ${name}

Input Password To Sign Up
    [Arguments]    ${password}
    Input Text    xpath://input[@placeholder="Minimum 6 characters with a number and a letter"]    ${password}
    
Do Not Want To Receive Exclusive Offers And Promotions
    CLick Element    xpath://input[@type='checkbox']

Submit Sign Up
    Click Button    SIGN UP
    
Sign Up With Email
    Click Button    Sign up with Email
    
Sign Up With Mobile
    Click Button    Sign up with Mobile
    
Select Month
    [Arguments]    ${month}
    Click Element    xpath://span[@class='next-select-placeholder'][contains(.,'Month')]
    Click Element    xpath://li[contains(.,'${month}')]
    
Select Day
    [Arguments]    ${day}
    Click Element    xpath://span[@class='next-select-placeholder'][contains(.,'Day')]
    Click Element    xpath://li[contains(.,'${day}')]
    
Select Year
    [Arguments]    ${year}
    Click Element    xpath://span[@class='next-select-placeholder'][contains(.,'Year')]
    Click Element    xpath://li[contains(.,'${year}')]
    
Select Gender
    [Arguments]    ${gender}
    Click Element    xpath://span[@class='next-select-inner'][contains(.,'Select')]
    Click Element    xpath://li[@value='${gender}']
    
*** Test Cases ***
Valid Login
    Open Login Page
    Input Email    ${EMAIL}
    Input Password    ${PASSWORD}
    Submit Credentials
    Sleep    5
    Close Browser

Sign Up With Email
    Open Sign Up Page
    Sign Up With Email   
    Input Email To Sign Up    ${EMAIL}
    Slide To Get Email Code
    # Input Email Validation Code    ${EMAIL_VALIDATION_CODE}
    Input Full Name To Sign Up    ${NAME}
    Input Password To Sign Up    ${PASSWORD}
    Do Not Want To Receive Exclusive Offers And Promotions
    Select Month    ${MONTH} 
    Select Day    ${DAY}
    Select Year    ${YEAR}
    Select Gender    ${GENDER}
    Submit Sign Up
    Sleep    5
    Close Browser
    
Sign Up With Mobile
    Open Sign Up Page
    Input Phone Number To Sign Up    ${PHONE}
    Slide To Get SMS Code
    # Input Email Validation Code    ${EMAIL_VALIDATION_CODE}
    Input Full Name To Sign Up    ${NAME}
    Input Password To Sign Up    ${PASSWORD}
    Do Not Want To Receive Exclusive Offers And Promotions
    Select Month    ${MONTH} 
    Select Day    ${DAY}
    Select Year    ${YEAR}
    Select Gender    ${GENDER}
    Submit Sign Up
    Sleep    5
    Close Browser
    