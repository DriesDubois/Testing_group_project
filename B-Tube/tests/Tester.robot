*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/homePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Hello World
    Log  Hello World!

