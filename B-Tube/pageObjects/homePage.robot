*** Settings ***
Resource  basePage.robot

*** Variables ***
${ACCEPT_COOKIES}=    xpath://*[@id="koekieBar"]/div[1]/div[2]/button[1]
${ABOUTUS_TXT}=       xpath://a[@class='smartphones']
${HOMEPAGE}=  https://brightshopapp.herokuapp.com/#/
${LOGO}=  xpath://*[@id="Logo"]

*** Keywords ***

Go To homePage
    go to  ${HOMEPAGE}
    sleep  6s