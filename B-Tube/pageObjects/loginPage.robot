*** Settings ***
Resource  basePage.robot

*** Variables ***
${SIGNIN_BUTTON}=    xpath://*[@id="SignInButton"]
${LOGIN_BUTTON}=       xpath://*[@id="SignInButtonComplete"]

*** Keywords ***

Click On Signin Button
    wait until element is visible  ${SIGNIN_BUTTON}
    Click element  ${SIGNIN_BUTTON}

Fill in mail adress
    Input text  //*[@id="SignInEmail"]  dries.dubois@gmail.com  true

Fill in password
    Input text  //*[@id="SignInPassword"]  test123  true

Click on Login Button
    Click element  ${LOGIN_BUTTON}

Succesfull login process
    click on signin button
    fill in mail adress
    fill in password
    click on login button
    wait until element is visible  xpath://*[@id="OrdersPageButton"]
    Page Should Contain Element  xpath://*[@id="OrdersPageButton"]
    sleep  5