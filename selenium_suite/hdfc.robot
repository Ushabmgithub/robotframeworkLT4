*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser  browser=chrome   executable_path=${EXECDIR}/drivers/chromedriver
  Maximize Browser Window
  Set Selenium Implicit Wait  10s

  Go To    url=https://netbanking.hdfcbank.com/netbanking/
  Select Frame      Xpath=/html/frameset/frameset/frame
  Input Text      name=fldLoginUserId    ushabm99
  Click Element    link=CONTINUE

  comment switch to main  html
  Unselect Frame



