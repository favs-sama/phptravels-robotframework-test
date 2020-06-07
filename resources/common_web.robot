*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test 
    Close Browser