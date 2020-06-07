*** Settings ***
Resource  ${EXECDIR}/resources/common_web.robot
Resource  ${EXECDIR}/resources/manage_session.robot 
Resource  ${EXECDIR}/data/login_credentials.robot 

Test Setup  Begin Web Test 
Test Teardown  End Web Test 

*** Test Cases ***
Login should pass with Valid Credentials 
    [Tags]  TC1 
    manage_session.Login Successfully with Valid Credentials    ${VALID_CREDENTIALS}

Login should fail with Invalid Credentials
    [Tags]  TC2
    manage_session.Navigate Login Page
    manage_session.Login with Invalid Credentials     ${INVALID_CREDENTIALS}
    manage_session.Wait for Failed Login Error Message    ${INVALID_CREDENTIALS}

