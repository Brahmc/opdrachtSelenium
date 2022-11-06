*** Settings ***
Resource  basePage.robot

*** Variables ***
${NAV}=  id:nav
${SIGN_IN_BUTTON}=  id:SignInButton
${LOADING_PAGE_LOGO}=  //*[@id="root"]/div/div[2]/img[contains(@src,'./static/media/Icon_Brightest.0c054a22.png')]

*** Keywords ***

Go To Home
    Go To  ${BASE_URL}
    Wait Until Element Is Visible  ${LOADING_PAGE_LOGO}
    Wait Until Element Is Not Visible  ${LOADING_PAGE_LOGO}

Click Sign in Button
    Wait Until Element Is Visible  ${SIGN_IN_BUTTON}
    Click Element  ${SIGN_IN_BUTTON}