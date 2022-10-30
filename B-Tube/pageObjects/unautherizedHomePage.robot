*** Settings ***
Resource  basePage.robot

*** Variables ***
${ACCEPT_COOKIES}=    xpath://*[@id="koekieBar"]/div[1]/div[2]/button[1]
${ABOUTUS_TXT}=       xpath://a[@class='smartphones']
${MOVIE_POSTER}=    xpath://*[@id="551804"]
${LOGIN_BUTTON}=       xpath://*[@id="SignInButtonComplete"]
${SEARCHBAR}=  //*[@class="MuiInputBase-input MuiOutlinedInput-input MuiAutocomplete-input MuiAutocomplete-inputFocused MuiInputBase-inputAdornedEnd MuiOutlinedInput-inputAdornedEnd"]
${robotVar} =       FooBarBaz

*** Keywords ***

click on movie
    sleep  5s
    wait until element is visible  ${MOVIE_POSTER}
    Click element  ${MOVIE_POSTER}

go to external link
    click on movie
    sleep  5s
    wait until element is visible  //*[@id="root"]/div/div[2]/div[1]/div[2]/div/div[2]/div[2]/div[2]/a
    Click element  //*[@id="root"]/div/div[2]/div[1]/div[2]/div/div[2]/div[2]/div[2]/a

search movie in searchbar
    sleep  5s
    wait until element is visible  //*[@class="MuiInputBase-input MuiOutlinedInput-input MuiAutocomplete-input MuiAutocomplete-inputFocused MuiInputBase-inputAdornedEnd MuiOutlinedInput-inputAdornedEnd"]
    Input text   ${SEARCHBAR}  freaky  true
    sleep  5s

click on signin
    sleep  5s
    wait until element is visible  //*[@id="RegisterButton"]
    Click element  //*[@id="RegisterButton"]

click on login
    sleep  5s
    wait until element is visible  //*[@id="SignInButton"]
    Click element  //*[@id="SignInButton"]
