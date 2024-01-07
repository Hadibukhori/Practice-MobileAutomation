*** Settings ***
Resource    ../pageObjects/Base/base.robot
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot

*** Test Cases ***
User should be able to login with valid credentials    
    # Step 1: Open application
    Open Flight application
    # Step 2: Verify home page appears
    Verify Home Page appears
    # Step 3: Click sign in button on home page
    Click Sign In Button On Home Page
    # Step 4: Verify login appears
    Verify Login Appears
    # Step 5: Input username
    Input User Email On Login Page    ${VALID_EMAIL}
    # Step 6: Input password
    Input User Password On Login Page  ${VALID_PASSWORD} 
    # Step 7: Click sign in button
    Click Sign In Button On Login Page
    # Step 8: Verify user is logged in
    Verify User Is Logged In
    # Step 9: Close application
    Close Flight Application

# User should not be able to login with invalid credentials