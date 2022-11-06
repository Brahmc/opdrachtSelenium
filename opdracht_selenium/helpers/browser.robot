*** Settings ***
Library  SeleniumLibrary
Resource  ../webconfig.robot

*** Variables ***
${LOADING_PAGE_LOGO}=  //*[@id="root"]/div/div[2]/img[contains(@src,'./static/media/Icon_Brightest.0c054a22.png')]

*** Keywords ***
Wait for page load
    Wait Until Element Is Visible  ${LOADING_PAGE_LOGO}  20s
    Wait Until Element Is Not Visible  ${LOADING_PAGE_LOGO}  20s