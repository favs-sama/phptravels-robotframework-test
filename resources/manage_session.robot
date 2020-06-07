*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_URL}  https://www.phptravels.net/admin

${LOGIN_LABEL}  Login Panel

${SELECTOR_name_email}  email 
${SELECTOR_name_password}  password 
${SELECTOR_id_logout}  logout
${SELECTOR_css_button}  button

${TIMEOUT}  5s

*** Keywords ***
Login Successfully with Valid Credentials
    [Arguments]  ${user_credentials}
    Navigate Login Page
    Login with Valid Credentials    ${user_credentials}
    Wait for Admin Dashboard to Load  ${user_credentials}

Navigate Login Page
    Go to Login Page 
    Wait for Login Page to Load

Go to Login Page 
    Go to  ${SIGNIN_URL}

Wait for Login Page to Load
    Wait Until Page Contains  ${LOGIN_LABEL}

Login with Valid Credentials
    [Arguments]  ${user_credentials}
    Input Text  name=${SELECTOR_name_email}  ${user_credentials.email}
    Input Text  name=${SELECTOR_name_password}  ${user_credentials.password}
    Click Login Button

Wait for Admin Dashboard to Load
    [Arguments]  ${user_credentials}
    Wait Until Page Contains  ${user_credentials.expected_message} 

Login with Invalid Credentials 
    [Arguments]  ${user_credentials}
    Input Text  name=${SELECTOR_name_email}  ${user_credentials.email}
    Input Text  name=${SELECTOR_name_password}  ${user_credentials.password}
    Click Login Button

Wait for Failed Login Error Message
    [Arguments]  ${user_credentials}
    Wait Until Page Contains  ${user_credentials.expected_message}  

Logout 
    Click Logout Element 
    Wait for Login Page to Load

Click Login Button 
    Click Button  css=${SELECTOR_css_button}

Click Logout Element 
    Click Element  id=${SELECTOR_id_logout}

