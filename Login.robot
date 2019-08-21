*** Settings ***
Resource    Resource.robot
    
*** Test Cases ***
Valid Login
    Open Login Page
    Input Email    ${EMAIL}
    Input Password    ${PASSWORD}
    Submit Credentials
    Sleep    5
    Close Browser
    