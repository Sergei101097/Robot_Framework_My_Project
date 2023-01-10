*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Invalid_login_information.robot
Suite Setup    Open My Brauser
Suite Teardown    Close my brwosers
Test Template    Account Login Testing
Test Template    Checking for an empty input field

*** Variables ***
${ErrorText}    Epic sadface: Username and password do not match any user in this service
*** Test Cases ***
#Input validation
Invalid login     standard_use     secret_sauce
Wrong password     standard_user      secret_sauc
Invalid login and password      standard_use     secret_sauc


*** Keywords ***
Account Login Testing
    [Arguments]    ${username}      ${password}
    Enter UserName  ${username}
    Enter Password  ${password}
    Clic Login
    Data entry error    ${ErrorText}

