*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CREATE_ACCOUNT_LINK}    xpath=//a[contains(text(),'Create an')]
${FIRST_NAME_FIELD}       id=reg-firstName
${LAST_NAME_FIELD}        id=reg-lastName
${EMAIL_FIELD}            id=reg-email
${BIRTH_YEAR_FIELD}       id=reg-birthYear
${CONTINUE_BTN}           name=signup

*** Keywords ***
Create New Yahoo Account
    Click Element    ${CREATE_ACCOUNT_LINK}
    Wait Until Element Is Visible    ${FIRST_NAME_FIELD}    10s

    Input Text    ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text    ${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text    ${EMAIL_FIELD}         ${EMAIL}
    Input Text    ${BIRTH_YEAR_FIELD}    ${BIRTH_YEAR}

    Click Button    ${CONTINUE_BTN}

    Log    CAPTCHA or phone verification expected here
