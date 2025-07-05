*** Settings ***
Resource    ../Resources/keywords.resource
Suite Setup     Open Browser    ${None}     gc
Test Setup      Run Keywords    Go To    ${HOME_URL}    AND     Maximize Browser Window
Suite Teardown      Close Browser

*** Test Cases ***
Signing into account
    [Tags]
    Sign in to your account

#Click laptop and computer menu
#    [Tags]  A
#    laptops and computers menu and select mouse product


#Cart check and secure checkout functionmality
#    Cart check and secure checkout
#
#Payment functionality check
#    Payment functionality


#robot --test "Signing into account" --test "Click laptop and computer menu" Resources/Tests.robot
#robot --test "Signing into account" --test "Payment functionality check" Resources/Tests.robot

