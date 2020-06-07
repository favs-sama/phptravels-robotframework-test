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
    manage_session.Go to Signin Page 
    manage_session.Wait for Login Page to Load
    manage_session.Login with Valid Credentials    ${VALID_CREDENTIALS}
    manage_session.Wait for Admin Dashboard to Load    ${VALID_CREDENTIALS}
    admin_dashboard.Click Bookings Button
    bookings.Wait for Bookings Page to Load
    manage_session.Click Logout Element 
    manage_session.Wait for Login Page to Load
