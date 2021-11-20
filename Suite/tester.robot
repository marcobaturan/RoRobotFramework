*** Settings ***
Documentation     A test suite for valid RoR blog.
...
...               Keywords are imported from the resource file
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Blog
    Welcome Blog
    Click on the article
    Click on destroy
    [Teardown]    Close Browser
