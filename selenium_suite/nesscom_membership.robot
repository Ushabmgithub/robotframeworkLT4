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
   ${text}     Handle Alert  action=LEAVE
   Log To Console    ${text}

   Alert Should Be Present     Please enter amount in digit and greater than zero.      action=ACCEPT

   Choose File    id=edit-field-memorandum-article-of-asso-und-0-upload    file_path=C:\\Users\\Harish banakar\\PycharmProjects\\pythonProject\\LT4\\robotframework\\USHA PRARAMBH CERTIFICATE.pdf


   Sleep    25s
   Close Browser
