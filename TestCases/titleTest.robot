*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/title.robot

*** Variables ***
${brausers}     chrome
${url}      https://www.saucedemo.com/inventory.html
${username}     standard_user
${password}     secret_sauce
${title}    Swag Labs

*** Test Cases ***
TitleTest
    Open my brauser     ${url}      ${brausers}
    Enter UserName      ${username}
    Enter Password      ${password}
    Clic Login
    Title   ${title}