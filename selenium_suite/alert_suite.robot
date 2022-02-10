*** Settings ***
Library     SeleniumLibrary
Library    Collections


*** Test Cases ***
TC1
   Open Browser     browser=chrome     executable_path=${EXECDIR}/drivers/chromedriver
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
   Click Element    Xpath=//img[@alt='Go']
   ${alert_text}     Handle Alert     action=ACCEPT
   Log To Console    ${aler_text}
   

   