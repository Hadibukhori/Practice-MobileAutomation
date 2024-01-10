*** Settings ***
Resource            ../Base/base.robot
Resource            ../homePageObject/homePage.robot
Variables           loginpage_locator.yaml 
Library             AppiumLibrary

*** Variables ***
${VALID_EMAIL}            support@ngendigital.com
${VALID_PASSWORD}         abc123
${INVALID_EMAIL}          supports@ngendigital.com
${INVALID_PASSWORD}       abc12345 
${INVALID1_EMAIL}
${INVALID1_PASSWORD} 
${Notification_Message}   Invalid username/password 

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${input_email}
    Wait Until Element Is Visible    ${input_password}
    Wait Until Element Is Visible    ${button_signIn_loginPage}

Input User Email On Login Page
    [Arguments]       ${email}=${VALID_EMAIL}
    Input Text    ${input_email}    ${email}

Input User Invalid Email On Login Page
    [Arguments]       ${email}=${INVALID_EMAIL}
    Input Text    ${input_email}    ${email}

Input User Without Email On Login Page
    [Arguments]       ${email}=${INVALID1_EMAIL}
    Input Text    ${input_email}    ${email}

Input User Password On Login Page
    [Arguments]       ${password}=${VALID_PASSWORD}
    Input Text    ${input_password}    ${password}

Input User Invalid Password On Login Page
    [Arguments]       ${password}=${INVALID_PASSWORD}
    Input Text    ${input_password}    ${password}

Input User Without Password On Login Page
    [Arguments]       ${password}=${INVALID1_PASSWORD}
    Input Text    ${input_password}    ${password}

Click Sign In Button On Login Page
    Click Element    ${button_signIn_loginPage}

Notification Invalid Message 
    Wait Until Page Contains    ${Notification_Message}

# ================================================ #
Login valid credentials
    Verify Home Page appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page        ${VALID_EMAIL}
    Input User Password On Login Page     ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Verify User Is Logged In

Login Invalid Email
    Verify Home Page appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page        ${INVALID_EMAIL}
    Input User Password On Login Page     ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Notification Invalid Message

Login Invalid Password
    Verify Home Page appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page        ${VALID_EMAIL}
    Input User Password On Login Page     ${INVALID_PASSWORD}
    Click Sign In Button On Login Page
    Notification Invalid Message

Login Without Email
    Verify Home Page appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page        ${INVALID1_EMAIL}
    Input User Password On Login Page     ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Notification Invalid Message

Login Without Password    
    Verify Home Page appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page        ${VALID_EMAIL}
    Input User Password On Login Page     ${INVALID1_PASSWORD}
    Click Sign In Button On Login Page
    Notification Invalid Message

Login Without Email and Password
    Verify Home Page appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page        ${INVALID1_EMAIL}
    Input User Password On Login Page     ${INVALID1_PASSWORD}
    Click Sign In Button On Login Page
    Notification Invalid Message



