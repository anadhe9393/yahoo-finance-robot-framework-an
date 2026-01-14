*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CONSENT_BTN}    xpath=//button[contains(.,'Accept') or contains(.,'Agree')]
${SIGN_IN_BTN}    xpath=//a[contains(@href,'login')]

*** Keywords ***
Handle Consent Popup If Present
    Run Keyword And Ignore Error
    ...    Wait Until Element Is Visible    ${CONSENT_BTN}    5s
    Run Keyword And Ignore Error
    ...    Click Button    ${CONSENT_BTN}

Click Sign In
    Handle Consent Popup If Present
    Wait Until Element Is Visible    ${SIGN_IN_BTN}    15s
    Click Element    ${SIGN_IN_BTN}
