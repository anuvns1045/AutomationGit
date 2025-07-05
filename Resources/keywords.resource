*** Settings ***
Resource        ../Common_libraries/common_utilities.resource
Variables       variables.py

*** Keywords ***
Sign in to your account
    Wait Until Element Is Visible    ${SIGN_IN_LOCATOR}
    Click Element    ${SIGN_IN_LOCATOR}
    Wait Until Element Is Visible    ${EMAIL_BOX_LOCATOR}
    Input Text    ${EMAIL_BOX_LOCATOR}    ${EMAIL_ID}
    Input Text    ${PASSWORD_BOX_LOCATOR}    ${PASSWORD}
    Click Element    ${SIGN_IN_BUTTON_LOCATOR}
    Sleep    5

laptops and computers menu and select mouse product
    Wait Until Element Is Visible    ${LAPTOP_AND_COMPUTERS_ICON_LOCATOR}
    Click Element    ${LAPTOP_AND_COMPUTERS_ICON_LOCATOR}
    Scroll Element Into View    ${MOUSE_PRODUCT_LOCATOR}
    Click Element    ${MOUSE_ADD_TO_CART_LOCATOR}
    Sleep    5

Cart check and secure checkout 
    Wait Until Element Is Visible    ${CART_LOCATOR}
    Click Element    ${CART_LOCATOR}    
    Click Element    ${SECURE_CHECKOUT_LOCATOR}
    Wait Until Element Is Visible    ${SHIPPING_METHOD_SELECTION}
    Click Element    ${SHIPPING_METHOD_SELECTION}
    Click Element    ${PROCEED_TO_BILLING_BUTTON}

Payment functionality
    Wait Until Element Is Visible    ${COD_CHECKBOX_LOCATOR}
    Click Element    ${COD_CHECKBOX_LOCATOR}
    Click Element    ${TERMS_CONDITIONS_CHECKBOX}
    Click Element    ${COMPLETE_ORDER_BUTTON}


    


    

    


    