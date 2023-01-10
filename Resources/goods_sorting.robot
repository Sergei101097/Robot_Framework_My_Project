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
click sorting
    Click Element       ${click_sorting}


click sorting low to high
    Click Element     ${sorting_price_low_to_high}

click sorting price high to low
    Click Element    ${sorting_price_high_to_low}

click sorting name Z to A
    Click Element    ${sorting_name_Z_to_A}

click sorting name A to Z
    Click Element    ${sorting_name_A_to_Z}


price check low to high
    [Arguments]    ${price}
    ${price_text}     get text    ${price_low_to_high}
    IF  "${price_text}" == "${price}"
    Log To Console  "True:low to high"
    ELSE
    Log To Console    "False:low to high"
    END

price check high to low
    [Arguments]    ${price}
    ${price_text}     get text    ${price_high_to_low}
    IF  "${price_text}" == "${price}"
    Log To Console  "True:high to low"
    ELSE
    Log To Console     "False:high to low"
    END

item name check name Z to A
    [Arguments]    ${item name}
    ${item name text}     Set Variable        ${name_Z_to_A}
    IF  "${item name text}" == "${item name}"
    Log To Console  "True:name Z to A"
    ELSE
    Log To Console     "False:name Z to A"
    END

item name check name A to Z
    [Arguments]    ${item name}
    ${item name text}     Set Variable    ${name_A_to_Z}
    IF  "${item name text}" == "${item name}"
    Log To Console  "True:name A to Z"
    ELSE
    Log To Console  "False:name A to Z"
    END

Close my brwosers
    Close All Browsers



