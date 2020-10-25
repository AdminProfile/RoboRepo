*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Login_URL}    https://admin-demo.nopcommerce.com
${Browser}    chrome

*** Keywords ***
Open Browser To Login Page
    open browser    ${Login_URL}     ${Browser}
    maximize browser window

Open Login Page
    go to   ${Login_URL}

Input Username
    [Arguments]      ${username}
    input text  id:Email    ${username}

Input Password
    [Arguments]      ${password}
    input text  id:Password     ${password}

Click on LoginButton
    click element   xpath://input[@class='button-1 login-button']

CLose Browser
    close all browsers