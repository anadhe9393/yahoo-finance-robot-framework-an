*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Yahoo Finance
    Open Browser    ${URL}    ${BROWSER}

Close Browser
    Close All Browsers
