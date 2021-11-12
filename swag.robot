*** Settings ***

Library     SeleniumLibrary     run_on_failure=Nothing

*** Variables *** 

${URL}      https://www.saucedemo.com
${DELAY}    0.5

*** Test Cases ***

Prepare Browser
    Open Browser    ${URL}  Chrome
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}

Login
    Wait Until Page Contains Element    id=login-button
    Input Text  id=user-name    standard_user
    Input Text  id=password     secret_sauce
    Click Element   id=login-button

Add to cart
    Wait Until Page Contains Element    id=shopping_cart_container
    Click Element   //*[@id="add-to-cart-sauce-labs-backpack"]
    Click Element   //*[@id="add-to-cart-sauce-labs-bolt-t-shirt"]
    Click Element   //*[@id="shopping_cart_container"]
checkout
    Wait Until Page Contains Element    id=header_container
    Click Element   //*[@id="checkout"]

Fill Information
    Wait Until Page Contains Element    id=checkout_info_container
    Input Text  id=first-name   Oliver
    Input Text  id=last-name    Osanottaja
    Input Text  id=postal-code  33580
    Click Element   id=continue

Finish
    Wait Until Page Contains Element    id=checkout_summary_container
    Click Element   id=finish

Close Browser
    Sleep   6s
    Close Browser

