*** Settings ***
Library       SeleniumLibrary
Variables     Data.yaml  

*** Keywords ***
Open Home Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    
Open Login Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Click Link    login
    Page Should Contain Element    xpath://h3[contains(.,'Welcome to Lazada! Please login.')]

Input Email
    [Arguments]    ${input}
    Input Text    ${EMAIL_BOX}    ${input}

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
    Scroll Element Into View    xpath://div[@class='next-menu ver next-overlay-inner animated expandInDown next-select-menu next-position-tl']
    Click Element    xpath://li[contains(.,'${month}')]
    
Select Day
    [Arguments]    ${day}
    Click Element    xpath://span[@class='next-select-placeholder'][contains(.,'Day')]
    Scroll Element Into View    xpath://div[@class='next-menu ver next-overlay-inner animated expandInDown next-select-menu next-position-tl']
    Click Element    xpath://li[contains(.,'${day}')]
    
Select Year
    [Arguments]    ${year}    
    Click Element    xpath://span[@class='next-select-placeholder'][contains(.,'Year')]
    Scroll Element Into View    xpath://div[@class='next-menu ver next-overlay-inner animated expandInDown next-select-menu next-position-tl']
    Click Element    xpath://li[contains(.,'${year}')]
    
Select Gender
    [Arguments]    ${gender}
    Click Element    xpath://span[@class='next-select-inner'][contains(.,'Select')]
    Click Element    xpath://li[@value='${gender}']
    
Input Search String
    [Arguments]    ${search_string}
    Input Text    ${SEARCH_BOX}    ${search_string}
    
Click Search button
    Click Element    ${SEARCH_BUTTON}
    
Select Product By Index
    [Arguments]    ${index}
    Click Element    xpath:(//img[@type='product'])[${index}]
