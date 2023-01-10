*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/leave_account.robot

*** Variables ***

${brausers}     chrome
${url}      https://www.saucedemo.com/
${username}     standard_user
${password}     secret_sauce
${textLogin}    LOGIN

*** Test Cases ***
AuthorizationTests
    Sleep speed
    Open my brauser     ${url}      ${brausers}
    Enter UserName      ${username}
    Enter Password      ${password}
    Clic Login
    CLick Menu
    Clic Logaut
    Login page screenshot
    Close my brwosers