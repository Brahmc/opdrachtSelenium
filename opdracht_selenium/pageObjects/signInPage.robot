*** Settings ***
Resource  basePage.robot

*** Variables ***
${PAGE_URL}=  https://brightshopapp.herokuapp.com/#/login
${EMAIL_INPUT}=  id:SignInEmail
${PASSWORD_INPUT}=  id:SignInPassword
${LOGIN_BUTTON}=  id:SignInButtonComplete
${FORM_ERROR_POPUP}=  //*[@id="SignIn"]/div/form/div[2]/div/code

*** Keywords ***

Page Contains Sing In Form
    ${login_placeholder}=  Get Element Attribute  ${EMAIL_INPUT}  placeholder
    ${password_placeholder}=  Get Element Attribute  ${PASSWORD_INPUT}  placeholder
    Should Contain  ${login_placeholder}  John e.g.
    Should Contain  ${password_placeholder}=  ********

Go To Sign In Page
    Go To  ${PAGE_URL}
    Wait for page load

Fill Sing In Form
    [Arguments]  ${email}=${EMPTY}  ${password}=${EMPTY}
    Input Text  ${EMAIL_INPUT}  ${email}
    Input Text  ${PASSWORD_INPUT}  ${password}

Click Login Button
    Wait Until Element Is Visible  ${LOGIN_BUTTON}
    Click Element  ${LOGIN_BUTTON}

Check if password is incorrect popup is present
    Wait Until Element Is Visible  ${FORM_ERROR_POPUP}
    ${TEXT}=  Get Text  ${FORM_ERROR_POPUP}
    Should Contain  ${TEXT}  Email or password incorrect.

Check if Email not registered popup is present
    Wait Until Element Is Visible  ${FORM_ERROR_POPUP}
    ${TEXT}=  Get Text  ${FORM_ERROR_POPUP}
    Should Contain  ${TEXT}  This email has not been registered.


