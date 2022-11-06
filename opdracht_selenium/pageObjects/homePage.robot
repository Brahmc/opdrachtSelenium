*** Variables ***
${NAV}=  id:nav
${SIGN_IN_BUTTON}=  id:SignInButton
${PROFILE_BUTTON}=  //*[@id="nav"]/div[4]/a[2]/*[@id="OrdersPageButton"]


*** Settings ***
Resource  ../helpers/browser.robot

*** Keywords ***
Go To Home
    Go To  ${BASE_URL}
    Wait for page load

Click Sign in Button
    Wait Until Element Is Visible  ${SIGN_IN_BUTTON}
    Click Element  ${SIGN_IN_BUTTON}

Check If User Signed In
    Wait Until Element Is Visible  ${PROFILE_BUTTON}
    ${PROFILE_BUTTON_TEXT}=  Get Text  ${PROFILE_BUTTON}
    Should Contain  ${PROFILE_BUTTON_TEXT}  PROFILE


Click Profile Button
    Wait Until Element Is Visible  ${PROFILE_BUTTON}
    Click Element  ${PROFILE_BUTTON}