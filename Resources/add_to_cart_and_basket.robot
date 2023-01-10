*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***

Sleep speed
    Set selenium speed  2 seconds

Open my brauser
    [Arguments]    ${url}      ${brausers}
    Open Browser    ${url}      ${brausers}
    Maximize Browser Window

Enter UserName
    [Arguments]    ${username}
    Input Text      ${input_username}   ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${input_password}     ${password}
Clic Login
    Click Element       ${clic_login}

Click Sauce_Labs_Backpack
    Click Element    ${add_to_cart_Sauce_Labs_Backpack}
Click Sauce_Labs_Bolt_T_Shirt
    Click Element    ${add_to_cart_Sauce_Labs_Bolt_T_Shirt}

Click Basket
    Click Element    ${click_basket}

Item name check Sauce Labs Backpack
    [Arguments]    ${item name}
    ${item name text}     Get Text    ${product_name_Sauce_Labs_Backpack}
    IF  "${item name text}" == "${item name}"
    Log To Console  "True:Sauce Labs Backpack"
    ELSE
    Log To Console  "False:Nou Sauce Labs Backpack"
    END

price check Sauce_Labs_Backpack
    [Arguments]    ${price}
    ${price_text}    get text    ${price_product_Sauce_Labs_Backpack}
    IF  "${price_text}" == "${price}"
    Log To Console  "True:Sauce Labs Backpack"
    ELSE
    Log To Console     "False:Nou Sauce Labs Backpack"
    END

Item name check Sauce_Labs_Bolt_T_Shirt
    [Arguments]    ${item name}
    ${item name text}     Get Text    ${product_name_Sauce_Labs_Bolt_T_Shirt}
    IF  "${item name text}" == "${item name}"
    Log To Console  "True:Sauce Labs Bolt T-Shirt"
    ELSE
    Log To Console  "False:Nou Sauce Labs Bolt T-Shirt"
    END

price check Sauce_Labs_Bolt_T_Shirt
    [Arguments]    ${price}
    ${price_text}     get text    ${price_product_Sauce_Labs_Bolt_T_Shirt}
    IF  "${price_text}" == "${price}"
    Log To Console  "True:Sauce Labs Bolt T-Shirt"
    ELSE
    Log To Console     "False:Sauce Labs Bolt T-Shirt"
    END

Click Checkout
    Click Element    ${click_checkout}

Enter FirstName
    [Arguments]    ${firstname}
     Input Text    ${input_first_name}  ${firstname}

Enter LastNmae
    [Arguments]    ${lastname}
    Input Text    ${input_last_name}    ${lastname}

Enter Code
    [Arguments]     ${code}
    Input Text    ${input_zip_and_postal_code}   ${code}

Clic continue
    Click Element       ${clic_continue}

Click Finish
    Click Element    ${click_finish}

Checking the order
    [Arguments]    ${order}
    Page Should Contain    ${order}

Clic Home
    Click Element    ${click_home}

Close my brwosers
    Close All Browsers
