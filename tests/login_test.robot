*** Settings ***
Library  SeleniumLibrary
Resource  ${EXECDIR}/resources/common_web.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test 

*** Test Cases ***
Login with Valid Credentials
    [Tags]  TC1
    Go to  https://www.phptravels.net/admin
    Wait Until Page Contains  Login Panel
    Input Text  name=email  admin@phptravels.com 
    Input Password  name=password  demoadmin
    Click Button  css=button
    Wait Until Page Contains  DASHBOARD


Login with Invalid Credentials
    [Tags]  TC2 
    Go to  https://www.phptravels.net/admin
    Input Text  name=email  admin@phptravels.com 
    Input Password  name=password  invalidpassword
    Click Button  css=button
    Wait Until Page Contains  Invalid Login Credentials

Login with Valid Credentials Check Invoice Page
    [Tags]  TC3 
    Go to  https://www.phptravels.net/admin
    Wait Until Page Contains  Login Panel 
    Input Text  name=email  admin@phptravels.com 
    Input Password  name=password  demoadmin 
    Click Button  css=button
    Wait Until Page Contains  DASHBOARD
    Click Button  xpath=//*[@id="content"]/div[2]/div[2]/div/div/div[2]/form/button
    Wait Until Page Contains  0923
    Click Element  id=logout
    