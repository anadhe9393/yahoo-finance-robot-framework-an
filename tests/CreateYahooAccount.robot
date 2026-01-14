*** Settings ***
Resource    ../resources/variables/TestData.robot
Resource    ../resources/keywords/CommonKeywords.robot
Resource    ../resources/pages/HomePage.robot
Resource    ../resources/pages/SignUpPage.robot

Suite Setup     Open Browser To Yahoo Finance
Suite Teardown  Close Browser

*** Test Cases ***
Create Yahoo Finance Account
    Click Sign In
    Create New Yahoo Account
