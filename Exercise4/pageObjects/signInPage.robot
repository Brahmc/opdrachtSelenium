*** Settings ***
Resource  basePage.robot

*** Variables ***
${EMAIL_INPUT}=  id:SignInEmail
${PASSWORD_INPUT}=  id:SignInPassword

*** Keywords ***

Page Contains Sing In Form
    ${login_placeholder}=  Get Element Attribute  ${EMAIL_INPUT}  placeholder
    ${password_placeholder}=  Get Element Attribute  ${PASSWORD_INPUT}  placeholder
    Should Contain  ${login_placeholder}  John e.g.
    Should Contain  ${password_placeholder}=  ********