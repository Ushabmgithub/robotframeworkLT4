*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser     browser=chrome   executable_path=${EXECDIR}/drivers/chromedriver
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=http://google.com/
   Set Window Size    600    8000
   ${width} ${hieght}  Get Window Size
   Log To Console    ${width}
   ${linkcount}     Get Element Count    tag=a
   Log To Console  ${linkcount}


   @{elements}     Get WebElements    tag=a



   ${text}     Get Text    ${elements}[0]
   Log To Console    ${text}


   FOR    ${i}    IN RANGE    0    ${linkcount}    1
   ${text}     Get Text    ${elements}[${i}]
   Log To Console    ${text}

   Run Keyword If    '${text}'=='Images'  Click Element    ${elements}[${i}]
   Exit For Loop If  '${text}'=='Images'
   END