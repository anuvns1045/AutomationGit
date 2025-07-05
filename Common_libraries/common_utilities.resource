*** Settings ***
Library     SeleniumLibrary
Library     common_variables.py
Library     String
Library     DateTime



*** Keywords ***
Generate Unique Date Without Special Characters
    ${Date}  Get Current Date
    ${Modified_Date}    Remove String    ${Date}    ${SPACE}  :  .  -
    [Return]   ${Modified_Date}

Generate And Return Unique Email
    ${Modified_Date}    Generate Unique Date Without Special Characters
    ${Unique_Name}  Catenate    Email${Modified_Date}@mail.com
    [Return]   ${Unique_Name}



