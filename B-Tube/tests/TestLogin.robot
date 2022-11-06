*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/homePage.robot
Resource            ../pageObjects/loginPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***
TEST succesful signin
    Go To homePage
    succesfull login process

Test login without password
    Go To homePage
    logout of account
    click on signin button
    fill in mail adress
    click on login button
    page should contain element  xpath://*[@id="SignInButton"]
    sleep  3

Test login with wrong mailaddress
    Go To homePage
    Unsuccesfull login process with wrong mail

Test login with wrong password
    Go To homePage
    Unsuccesfull login process with wrong password

Test login with unregistered mailaddress
    Go To homePage
    Unsuccesfull login process with unregistered mail




