*** Settings ***
Resource        ../pageObjects/Base/base.robot
Resource        ../pageObjects/homePageObject/homePage.robot
Resource        ../pageObjects/loginPageObject/loginPage.robot
Test Setup        Open Flight application 
Test Teardown     Close Flight Application


*** Test Cases ***
User should be able to login with valid credentialss
    Login valid credentials

User should not be able to login with invalid email
    Login Invalid Email

User should not be able to login with invalid password
    Login Invalid Password

User should not be able to login without email
    Login Without Email

User should not be able to login without password
    Login Without Password

User should not be able to login without email and password
    Login Without Email and Password   