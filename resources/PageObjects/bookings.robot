*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${REFERENCE_NO}  0923

*** Keywords ***
Wait for Bookings Page to Load
    Wait Until Page Contains  ${REFERENCE_NO}