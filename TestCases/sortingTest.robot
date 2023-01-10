*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/goods_sorting.robot

*** Variables ***

${brausers}     chrome
${url}      https://www.saucedemo.com/inventory.html
${username}     standard_user
${password}     secret_sauce
${low to high}      $7.99
${high to low}      $49.99
${name Z to A}      Test.allTheThings() T-Shirt (Red)
${name A to Z}      Sauce Labs Backpack
*** Test Cases ***
sorting goods by category Tests
    Open my brauser     ${url}      ${brausers}
    Enter UserName      ${username}
    Enter Password      ${password}
    Clic Login
    click sorting
    click sorting low to high
    click sorting price high to low
    click sorting name Z to A
    click sorting name A to Z
    Close my brwosers


checking sorted goods Test
    Open my brauser     ${url}      ${brausers}
    Enter UserName      ${username}
    Enter Password      ${password}
    Clic Login
    click sorting

    click sorting low to high
    price check low to high     ${low to high}

    click sorting price high to low
    price check high to low     ${high to low}

    click sorting name Z to A
    item name check name Z to A    ${name Z to A}

    click sorting name A to Z
    item name check name A to Z     ${name A to Z}


    Close my brwosers