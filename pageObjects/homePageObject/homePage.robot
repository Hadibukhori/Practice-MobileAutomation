*** Settings ***
Resource            ../Base/base.robot
Variables           homepage_locator.yaml               
Library             AppiumLibrary

*** Keywords ***
Verify Home Page appears
    Wait Until Element Is Visible    ${logo_homePage}

Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${button_signin}
    Click Element                    ${button_signin}

Verify User Is Logged In
    Wait Until Element Is Visible    ${userName_text}