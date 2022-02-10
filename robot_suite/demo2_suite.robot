*** Variables ***
${name}    Usha
@{COLORS}    red  green  blue
*** Test Cases ***
TC1
   Log To Console    ${EXECDIR}
   Log To Console    ${CURDIR}
   Log To Console    ${EXECDIR}${/}driver${/}chromedriver.exe
   Log To Console    ${SUITE_NAME}
   Log To Console    ${TEST_NAME}
   Log To Console    ${TEMPDIR}
   Log To Console    ${name}
   Log To Console    ${COLORS}
   Log To Console    ${COLORS}[0]


 TC2

   ${count}   Get Length    ${COLORS}
   Log To Console    ${count}

   FOR  ${i}    IN   RANGE  0  ${count}  1
         Log To Console  ${COLORS}${i}
   END