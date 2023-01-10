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

Click and Title Facebook
    Click Element   ${facebook}
    ${title}  Set Variable      ${title_facebook}
    Log To Console    ${title}

Click and Title Twitter
    Click Element    ${twitter}
    ${title}  Set Variable      ${title_twitter}
    Log To Console    ${title}

Click and Title Linkedin
    Click Element    ${linkedin}
    ${title}  Set Variable      ${title_linkedin}
    Log To Console    ${title}




