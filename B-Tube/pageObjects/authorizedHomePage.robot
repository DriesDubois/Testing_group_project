
*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/homePage.robot
Resource            ../pageObjects/loginPage.robot


*** Variables ***
${PROFILE_BUTTON}=  xpath://html/body/div[1]/div/div[2]/header/div[4]/a[2]
${PROFILE_PAGE}=  xpath://*[@id="SignIn"]/div[1]/p
${MOVIE_BUTTON}=  xpath://*[@id="nav"]/div[4]/a[1]
${MOVIE_PAGE}=  xpath://*[@id="root"]/div/div[2]/div[3]/div/div/div[1]/p
${RENT_BUTTON}=  xpath://*[@id="RentMovieButton"]
${CLOSE}=  xpath://*[@id="CloseModal"]
${SIGN_OUT}=  xpath://*[@id="SignOutButton"]
${REGISTER_BUTTON}=  xpath://*[@id="RegisterButton"]
${ADD_CREDIT}=  xpath://*[@id="SignIn"]/div[3]/button
${BUY_BUTTON}=  xpath://*[@id="SignIn"]/div[3]/div[2]/div/form/button
${CANCEL_BUTTON}=  xpath://*[@id="SignIn"]/div[3]/div[2]/div/form/div/a



*** Keywords ***


click on profile button
  click element  ${PROFILE_BUTTON}
  wait until element is visible  ${PROFILE_PAGE}
  Page Should Contain Element  ${PROFILE_PAGE}

cancel payment
  click element  ${ADD_CREDIT}
  wait until element is visible  ${BUY_BUTTON}
  click element  ${CANCEL_BUTTON}
  sleep  5s
  Page Should Not Contain  ${BUY_BUTTON}

click on MyMovies
  click element  ${MOVIE_BUTTON}
  wait until element is visible  ${MOVIE_PAGE}
  Page Should Contain Element  ${MOVIE_PAGE}

rent Movie
  sleep  5s
  wait until element is visible  ${RENT_BUTTON}
  Click element  ${RENT_BUTTON}
  Page Should Contain Element  ${CLOSE}


click on sign out
  click element  ${SIGN_OUT}
  wait until element is visible  ${REGISTER_BUTTON}
  Page Should Contain Element  ${REGISTER_BUTTON}










