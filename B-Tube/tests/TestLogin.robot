*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/homePage.robot
Resource            ../pageObjects/loginPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***
Go To homePage
    Go To homePage

Navigate to login screen
    Click On Signin Button



