*** Settings ***
Resource  basePage.robot

*** Variables ***
${SIGNIN_BUTTON}=    xpath://*[@id="SignInButton"]
${LOGIN_BUTTON}=       xpath://*[@id="SignInButtonComplete"]
${LOGOUT_BUTTON}=       xpath://*[@id="SignOutButton"]
${WRONG_MAIL_ERROR}=  Please fill in a correct email-adress.
${UNREGISTERED_MAIL}=  testie.tester@gmail.com

*** Keywords ***

Click On Signin Button
    wait until element is visible  ${SIGNIN_BUTTON}
    Click element  ${SIGNIN_BUTTON}

Fill in mail adress
    Input text  //*[@id="SignInEmail"]  dries.dubois@gmail.com  true

Fill in wrong mail adress
    Input text  //*[@id="SignInEmail"]  dries.dubois  true

Fill in unregistered mail adress
    Input text  //*[@id="SignInEmail"]  ${UNREGISTERED_MAIL}  true

Fill in password
    Input text  //*[@id="SignInPassword"]  test123  true

Click on Login Button
    Click element  ${LOGIN_BUTTON}

Logout of account
    Click element  ${LOGOUT_BUTTON}

Succesfull login process
    click on signin button
    fill in mail adress
    fill in password
    click on login button
    wait until element is visible  xpath://*[@id="OrdersPageButton"]
    Page Should Contain Element  xpath://*[@id="OrdersPageButton"]
    sleep  5s

Unsuccesfull login process with wrong mail
    click on signin button
    fill in wrong mail adress
    fill in password
    click on login button
    wait until page contains  ${WRONG_MAIL_ERROR}
    Page Should Contain  ${WRONG_MAIL_ERROR}
    sleep  5

Unsuccesfull login process with unregistered mail
    click on signin button
    fill in unregistered mail adress
    fill in password
    click on login button
    wait until page contains  This email has not been registered.
    Page Should Contain  This email has not been registered.
    sleep  5