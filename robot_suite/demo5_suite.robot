*** Settings ***
Library    OperatingSystem

*** Test Cases ***

TC1
   Log To Console    ${EXECDIR}{/}demo.txt
   File Should Exist  ${EXECDIR}{/}demo.txt

  read
  ${output}  Get Binary File    ${EXECDIR}${/}demo.txt
  Log