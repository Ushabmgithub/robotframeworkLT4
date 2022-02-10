*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser     browser=chrome    executable_path=${EXECDIR}/drivers/chromedriver
  Maximize Browser Window
  Set Selenium Implicit Wait    30s
  Go To    url=https://nasscom.in/nasscom-membership
   Click Element    id=edit-field-membership-type-und-1203
   Click Element    Xpath=//*[@id="edit-field-business-focus-inst-und-966"]
   Click Element    Xpath=//*[@id="edit-field-business-focus-inst-und-970"]
   #Click Element     Xpath=//*[@id="edit-submitted-contact-person-for-nasscom-email-id-cp"]
   Click Element    link=Calculate Membership Fee
   ${alert_text}     Handle Alert     action=ACCEPT
   Log To Console    ${alert_text}
