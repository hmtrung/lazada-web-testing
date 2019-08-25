*** Settings ***
Resource    Resource.robot
Test Setup    Open Home Page
Test Teardown    Close Browser

*** Test Cases ***
First Search
    Input Search String    ${SEARCH_STRING}
    Click Search Button
    Sleep    5
    Execute Javascript    window.scrollTo(0, 200)
    Select Product By Index    7
    Sleep    5