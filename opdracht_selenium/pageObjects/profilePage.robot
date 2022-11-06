*** Settings ***
Resource  ../helpers/browser.robot

*** Variables ***
${PROFILE_HEADER}=  //*[@id="SignIn"]/div[1]/p

*** Keywords ***
Check If Profile Page Contains info
    ${TEXT}=  Get Text  ${PROFILE_HEADER}
    Should Contain  ${TEXT}  PROFILE