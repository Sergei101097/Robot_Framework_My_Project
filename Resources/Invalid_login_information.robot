*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Variables ***
${brausers}     chrome
${url}      https://www.saucedemo.com/

*** Keywords ***

Sleep speed
    Set selenium speed  2 seconds

Open my brauser
    Open Browser    ${url}      ${brausers}
    Maximize Browser Window

Enter UserName
    [Arguments]    ${username}
    Input Text      ${input_username}   ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${input_password}     ${password}
Clic Login
    Click Element       ${clic_login}


Data entry error
    [Arguments]    ${Error}
    Page Should Contain    ${Error}

Empty field username
    [Arguments]    ${Errors}
    Page Should Contain    ${Errors}

Empty field password
    [Arguments]    ${Errors}
    Page Should Contain    ${Errors}


Close my brwosers
    Close All Browsers
