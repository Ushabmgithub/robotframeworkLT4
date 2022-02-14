*** Settings ***
Library    SeleniumLibrary



*** Test Cases ***
TC1
   Open Browser   browser=chrome    alias=b1     executable_path=${EXECDIR}${/}drivers${/}chromedriver
   Go To    url=http://google.com
   Open Browser   browser=chrome    alias=b2     executable_path=${EXECDIR}${/}drivers${/}chromedriver
   Go To    url=http://facebook.com

   Switch Browser    b1

   ${title}    Get Title
   Log To Console    ${title}

   Switch Browser    b2
   Close Browser
