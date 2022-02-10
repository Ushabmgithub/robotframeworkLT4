*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser     browser=chrome     executable_path=${EXECDIR}/drivers/chromedriver
  Maximize Browser Window
  Set Selenium Implicit Wait    30s
  Go To    url=https://demo.openemr.io/b/openemr/index.php

  Set Selenium Speed    2s
  
  Input Text    id=authUser     admin
  
  Reload Page
  
  Input Text    id=clearPass    pass
  Select From List By Label    name=languageChoice     English (Indian)


  ${appdesc}       Get Text    xpath=//p[contains(text(),'most')]
  Log To Console    ${appdesc}
  
  
  ${selecteddropdownlabel}     Get Selected List Label    name=languageChoice
  Log To Console    ${selecteddropdownlabel} 