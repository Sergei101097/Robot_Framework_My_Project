*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my brauser
    [Arguments]    ${url}      ${brausers}
    Open Browser    ${url}      ${brausers}
    Maximize Browser Window
Sleep speed
    Set selenium speed      2 seconds

Enter UserName
    [Arguments]    ${username}
    Input Text      ${input_username}   ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${input_password}     ${password}
Clic Login
    Click Element       ${clic_login}
Title
    [Arguments]    ${title}
    Title Should Be    ${title}
