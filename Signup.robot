*** Settings ***
Resource    Resource.robot

*** Test Cases ***
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