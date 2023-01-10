*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/user_authorization.robot

*** Variables ***

${brausers}     chrome
${url}      https://www.saucedemo.com/
${username}     standard_user
${password}     secret_sauce

*** Test Cases ***
AuthorizationTests
    Open my brauser     ${url}      ${brausers}
    Enter UserName      ${username}
    Enter Password      ${password}
    Clic Login
    Close my brwosers