*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SELECTOR_XPATH_Bookings}  //*[@id="content"]/div[2]/div[2]/div/div/div[2]/form/button


*** Keywords ***
Click Bookings Button
    Click Button  xpath=${SELECTOR_XPATH_Bookings}