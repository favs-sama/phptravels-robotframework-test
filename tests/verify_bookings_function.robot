*** Settings ***
Resource  ${EXECDIR}/resources/common_web.robot
Resource  ${EXECDIR}/resources/manage_session.robot 
Resource  ${EXECDIR}/data/login_credentials.robot 
Resource  ${EXECDIR}/resources/PageObjects/admin_dashboard.robot 
Resource  ${EXECDIR}/resources/PageObjects/bookings.robot 

Test Setup  Begin Web Test
Test Teardown  End Web Test 

*** Test Cases ***
Invoice of Specific Booking can be Viewed
    [Tags]  TC3 
    manage_session.Login Successfully with Valid Credentials    ${VALID_CREDENTIALS}
    admin_dashboard.Click Bookings Button
    bookings.Wait for Bookings Page to Load
    manage_session.Logout 
