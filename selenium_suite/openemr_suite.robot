*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
TC1 Valid Login
    Open Browser  url=https://demo.openemr.io/b/openemr/index.php  browser=chrome   executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser   admin
    Input Text    id=clearPass  pass
    Select From List By Label    name=languageChoice      English (Indian)
    Click Element    Xpath=//button[@type='submit']
    
    Mouse Over    Xpath=//*[@id="username"]/span[1]
    
    Click Element   Xpath=//*[@id="userdropdown"]/li[4]
    Close Browser

    #${tittle}   Get Title
    #Log To Console    ${tittle}
    
    

    