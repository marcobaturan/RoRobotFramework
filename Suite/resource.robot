*** Settings ***
Documentation     Reusable keywords and variables.
Library           Selenium2Library

*** Variables ***
${SERVER}         localhost:3000
${BROWSER}        Firefox
${LOGIN URL}      http://${SERVER}/
${WELCOME URL}    http://${SERVER}/

*** Keywords ***
Open Blog
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Blog Should Be Open

Blog Should Be Open
    Location Should Be    ${LOGIN URL}
    Title Should Be    Blog

Welcome Blog
    Location Should Be    ${WELCOME URL}
    Title Should Be    Blog

Click on the article
    Click Link    My first article in the blog

Click on destroy
    Click Link    Destroy

