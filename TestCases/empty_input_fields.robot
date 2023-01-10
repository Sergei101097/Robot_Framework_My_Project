*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Invalid_login_information.robot
Suite Setup    Open My Brauser
Suite Teardown    Close my brwosers
Test Template    Checking for an empty username input field

*** Variables ***
${empty field username}     Epic sadface: Username is required

*** Test Cases ***
#Validate input for empty login or login and password
enter an empty login    ${EMPTY}    secret_sauce
enter an empty password     ${EMPTY}    ${EMPTY}

*** Keywords ***
Checking for an empty username input field
    [Arguments]    ${username}      ${password}
#    Sleep speed
    Enter UserName  ${username}
    Enter Password  ${password}
    Clic Login
    Empty field username     ${empty field username}
