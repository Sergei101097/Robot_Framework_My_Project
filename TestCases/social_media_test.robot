*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/social_media.robot

*** Variables ***

${brausers}     chrome
${url}      https://www.saucedemo.com/inventory.html
${username}     standard_user
${password}     secret_sauce
${title facebook}   Sauce Labs | Facebook
${title twitter}    Sauce Labs (@saucelabs) / Твиттер
${title linkedin}   (25) Sauce Labs: вкладка «Обзор» | LinkedIn


*** Test Cases ***
SocialMediaTests
    Open my brauser     ${url}      ${brausers}
    Enter UserName      ${username}
    Enter Password      ${password}
    Clic Login
    Click and Title Facebook
    Click And Title Twitter
    Click and Title Linkedin
