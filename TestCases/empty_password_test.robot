*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Invalid_login_information.robot
Suite Setup    Open My Brauser
Suite Teardown    Close my brwosers
Test Template    Checking for an empty password input field

*** Variables ***
${empty field password}     Epic sadface: Password is required

*** Test Cases ***
#Validate input for empty password
enter an empty password    standard_user         ${EMPTY}

*** Keywords ***
Checking for an empty password input field
    [Arguments]    ${username}      ${password}
    Enter UserName  ${username}
    Enter Password  ${password}
    Clic Login
    Empty field password     ${empty field password}
