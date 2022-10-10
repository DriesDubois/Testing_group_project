*** Settings ***
Resource  basePage.robot

*** Variables ***
${SIGNIN_BUTTON}=    xpath://*[@id="SignInButton"]
${ABOUTUS_TXT}=       xpath://a[@class='smartphones']

*** Keywords ***

Click On Signin Button
    Click element  ${SIGNIN_BUTTON}
