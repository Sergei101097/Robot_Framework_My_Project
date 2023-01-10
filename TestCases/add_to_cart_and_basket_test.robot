*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/add_to_cart_and_basket.robot

*** Variables ***
${brausers}     chrome
${url}      https://www.saucedemo.com/
${username}     standard_user
${password}     secret_sauce
${Name of product №1}       Sauce Labs Backpack
${Price of product №1}      $29.99
${Name of product №2}       Sauce Labs Bolt T-Shirt
${Price of product №2}      $15.99
${FirstNmae}   Sergei
${LastName}     Dudorov
${ZipPostalCode}    gregetr
${text_order}  Your order has been dispatched, and will arrive just as fast as the pony can get there!

*** Test Cases ***
AddToCartAndBasketTests
    Open my brauser     ${url}      ${brausers}
    Enter UserName      ${username}
    Enter Password      ${password}
    Clic Login
    Click Sauce_Labs_Backpack
    Click Sauce_Labs_Bolt_T_Shirt
    Click Basket
    Item name check Sauce Labs Backpack     ${Name of product №1}
    price check Sauce_Labs_Backpack     ${Price of product №1}
    Item name check Sauce_Labs_Bolt_T_Shirt     ${Name of product №2}
    price check Sauce_Labs_Bolt_T_Shirt     ${Price of product №2}
    Click Checkout
    Enter FirstName     ${FirstNmae}
    Enter LastNmae      ${LastName}
    Enter Code      ${ZipPostalCode}
    Clic continue
    Click Finish
    Checking the order  ${text_order}
    Clic Home
    Close my brwosers