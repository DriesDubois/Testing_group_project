*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/homePage.robot
Resource            ../pageObjects/authorizedHomePage.robot
Resource            ../pageObjects/unautherizedHomePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***


*** Test Cases ***
Test click on profile button
       Go To homePage
       succesfull login process
       click on profile button

Test cancel payment
  cancel payment

Test click on MyMovies
  Go To homePage
  click on MyMovies

Test rent a movie
  Go To homePage
  click on movie
  rent movie

Test click on sign out
  click on sign out


*** Keywords ***
Provided precondition
    Setup system under test
