*** Settings ***
Resource        ../Common_libraries/common_utilities.resource


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
    Mouse Over    ${LAPTOP_AND_COMPUTERS_ICON_LOCATOR}
    Click Element    ${Laptops_and_accessories}
    Sleep    5
    Mouse Over    ${MONITOR_LOCATOR}
    Click Element    ${MONITOR_ADD_TO_CART_LOCATOR}
    Sleep    5
#    Scroll Element Into View    ${MOUSE_PRODUCT_LOCATOR}

    Sleep    5

Cart check and secure checkout
    Wait Until Element Is Visible    ${CART_LOCATOR}
    Click Element    ${CART_LOCATOR}
    Click Element    ${SECURE_CHECKOUT_LOCATOR}
    Sleep    10
#    Wait Until Element Is Visible    ${SHIPPING_METHOD_SELECTION}
    Click Element    //div[@class="CheckoutDeliveryOption-Span"]/strong[text()='Standard Post']  # ......IMP......
 #    Select Radio Button   option-Standard Post  ${SHIPPING_METHOD_SELECTION}
    Click Element    ${PROCEED_TO_BILLING_BUTTON}

Payment functionality
    Wait Until Element Is Visible    ${COD_CHECKBOX_LOCATOR}
    Click Element    ${COD_CHECKBOX_LOCATOR}
    Click Element    ${TERMS_CONDITIONS_CHECKBOX}
    Click Element    ${COMPLETE_ORDER_BUTTON}











