*** Settings ***
Resource            ../Base/base.robot
Variables           loginpage_locator.yaml 
Library             AppiumLibrary

*** Variables ***
${VALID_EMAIL}            support@ngendigital.com
${VALID_PASSWORD}         abc123
    
*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${input_email}
    Wait Until Element Is Visible    ${input_password}
    Wait Until Element Is Visible    ${button_signIn_loginPage}

Input User Email On Login Page
    [Arguments]       ${email}=${VALID_EMAIL}
    Input Text    ${input_email}    ${email}

Input User Password On Login Page
    [Arguments]       ${password}=${VALID_PASSWORD}
    Input Text    ${input_password}    ${password}

Click Sign In Button On Login Page
    Click Element    ${button_signIn_loginPage}