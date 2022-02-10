*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
TC1 Valid Login
    Open Browser  url=https://phptravels.net/  browser=chrome   executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text