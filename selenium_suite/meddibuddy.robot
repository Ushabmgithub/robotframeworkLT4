*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
TC1 Valid Login
    Open Browser   url=https://www.medibuddy.in/    browser=chrome    executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Click Element    link=Sign up
    Input Text    id=name    Usha
    Input Text    id=email    ushabm2gmail.com
    Input Text    id=companyName    L&T
    Input Text    id=mobileNumber    8648374989
    Input Text    id=pincode    578435
    Input Text    id=address    Mysore
    Input Text    id=websiteUrl    www.ltts.com
    Input Text    id=empCount    21
    Click Element    Xpath=//*[@id="root"]/div/div/div[3]/div[3]/form/div/div[2]/input[2]
    Close Browser