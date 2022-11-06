*** Settings ***

Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/unautherizedHomePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

Force Tags          MyTag

*** Variables ***

${robotVar} =            FooBarBaz

*** Test Cases ***

Test movie opening
    sleep  5s
    click on movie
    Close browser

logo goes to homepage
    Open My Website
    logo goes to homepage
    Close browser

Search movie
    Open My Website
    search movie in searchbar
    Close browser

Signin works
    Open My Website
    click on signin
    Close browser

login works
    Open My Website
    click on login
    Close browser


#click on external link
#    Open My Website
#    go to external link
#    Close browser