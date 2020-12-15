*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login.robot


*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username      ${USERNAME}
    Input Password      ${PASSWORD}
    Close Browser

