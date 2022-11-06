*** Settings ***
Resource  basePage.robot

*** Variables ***
${ACCEPT_COOKIES}=    xpath://*[@id="koekieBar"]/div[1]/div[2]/button[1]
${ABOUTUS_TXT}=       xpath://a[@class='smartphones']
${MOVIE_POSTER}=    xpath://*[@id="551804"]
${LOGIN_BUTTON}=       xpath://*[@id="SignInButtonComplete"]
${SEARCHBAR}=  xpath://*[@class="MuiInputBase-input MuiOutlinedInput-input MuiAutocomplete-input MuiAutocomplete-inputFocused MuiInputBase-inputAdornedEnd MuiOutlinedInput-inputAdornedEnd"]
${MOVIE_INFO}=  xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div
${EXTERNALLINK}=  xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div[2]/div[2]/div[2]/a
${LOGO}=  xpath://*[@id="Logo"]
${robotVar} =       FooBarBaz

*** Keywords ***

click on movie
    sleep  5s
    wait until element is visible  ${MOVIE_POSTER}
    Click element  ${MOVIE_POSTER}
    Page Should Contain Element  ${movie_info}

go to external link
    click on movie
    sleep  5s
    wait until element is visible  ${EXTERNALLINK}
    Click element  ${EXTERNALLINK}
    Page Should Contain Element  xpath://html/body/div[1]/header/div[1]/div/div[1]/a/img

logo goes to homepage
    sleep  5s
    wait until element is visible  ${logo}
    Click element  ${logo}
    Page Should Contain Element  ${movie_poster}

search movie in searchbar
    sleep  5s
    wait until element is visible  xpath://*[@class="MuiInputBase-input MuiOutlinedInput-input MuiAutocomplete-input MuiAutocomplete-inputFocused MuiInputBase-inputAdornedEnd MuiOutlinedInput-inputAdornedEnd"]
    Input text   ${SEARCHBAR}  freaky  true
    sleep  5s
    Page Should Contain Element  ${SEARCHBAR}

click on signin
    sleep  5s
    wait until element is visible  xpath://*[@id="RegisterButton"]
    Click element  xpath://*[@id="RegisterButton"]
    Page Should Contain Element  xpath://*[@id="Register"]/div/form

click on login
    sleep  5s
    wait until element is visible  xpath://*[@id="SignInButton"]
    Click element  xpath://*[@id="SignInButton"]
    Page Should Contain Element  xpath://*[@id="SignIn"]/div/form
