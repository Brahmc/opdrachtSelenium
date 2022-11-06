*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/signInPage.robot
Resource  ../pageObjects/profilePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test Navigate To Sign In page
    Go To Home
    Click Sign in Button
    Page Contains Sing In Form

Test Sign In with non existend account
    Go To Sign In Page
    Fill Sing In Form  randomemail@random.com  randompassword123
    Click Login Button
    Check if Email not registered popup is present

Test Sign In with wrong password
    Go To Sign In Page
    Fill Sing In Form  john.smith@gmail.com  randompassword123
    Click Login Button
    Check if password is incorrect popup is present

Test Sign In happyflow
    Go To Sign In Page
    Fill Sing In Form  john.smith@gmail.com  password
    Click Login button
    Check If User Signed In

Check profile information
    Go To Home
    Click Profile Button
    Check If Profile Page Contains info








