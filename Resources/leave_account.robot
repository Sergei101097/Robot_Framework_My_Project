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

CLick Menu
    Click Element    ${ckick_menu}

Clic Logaut
    Click Element    ${click_logaut}

Login page screenshot
    capture element screenshot  ${screenshot}        /home/sergei/Рабочий стол/my_project/final_testing/screenshot/Login page screenshot.png


Close my brwosers
    Close All Browsers
