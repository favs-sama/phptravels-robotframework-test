*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Login with Valid Credentials
    [Tags]  TC1
    Open Browser  about:blank  chrome
    Go to  https://www.phptravels.net/admin
    Wait Until Page Contains  Login Panel
    Input Text  name=email  admin@phptravels.com 
    Input Password  name=password  demoadmin
    Click Button  css=button
    Wait Until Page Contains  DASHBOARD
    Close Browser


Login with Invalid Credentials
    [Tags]  TC2 
    Open Browser  about:blank  chrome 
    Go to  https://www.phptravels.net/admin
    Input Text  name=email  admin@phptravels.com 
    Input Password  name=password  invalidpassword
    Click Button  css=button
    Wait Until Page Contains  Invalid Login Credentials
    Close Browser

Login with Valid Credentials Check Invoice Page
    [Tags]  TC3 
    Open Browser  about:blank  chrome
    Go to  https://www.phptravels.net/admin
    Wait Until Page Contains  Login Panel 
    Input Text  name=email  admin@phptravels.com 
    Input Password  name=password  demoadmin 
    Click Button  css=button
    Wait Until Page Contains  DASHBOARD
    Click Button  xpath=//*[@id="content"]/div[2]/div[2]/div/div/div[2]/form/button
    Wait Until Page Contains  0923
    Click Element  id=logout
    Close Browser
    