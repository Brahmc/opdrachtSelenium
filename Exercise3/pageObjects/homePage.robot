*** Settings ***
Resource  basePage.robot

*** Variables ***
${ACCEPT_COOKIES}=    xpath://*[@id="koekieBar"]/div[1]/div[2]/button[1]
${ABOUTUS_TXT}=       xpath://a[@class='smartphones']
${LOGIN_BUTTON}=      //*[@id="userbar"]/li[4]/a
${LOGIN_HEADER}=      //*[@id="header"]
${SEARCHBAR}=         //*[@id="mainSearch"]/div/input

*** Keywords ***

Go To Home
    Delete All Cookies
    Go To  ${BASE_URL}
    Wait Until Element Is Visible  ${ACCEPT_COOKIES}
    Click Element  ${ACCEPT_COOKIES}
    Wait Until Element Is Not Visible  ${ACCEPT_COOKIES}

Get Smartphones text
    Wait Until Element Is Visible  ${ABOUTUS_TXT}
    ${text}=  Get Text  ${ABOUTUS_TXT}
    [Return]  ${text}

Go From Home To Login
    Click Element  ${LOGIN_BUTTON}

Get Login Header Text
    Wait Until Element Is Visible  ${LOGIN_HEADER}
    ${text}=  Get Text  ${LOGIN_HEADER}
    [Return]  ${text}

Search For
    [Arguments]  ${search}

