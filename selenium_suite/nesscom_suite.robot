*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem

*** Test Cases ***
TC1 Valid Login
    Open Browser   url=https://nasscom.in/about-us/carrer     browser=chrome     executable_path=${EXECDIR}/drivers/chromedriver
    Click Element    Xpath=//*[@id="member-form"]/div/div/a
    Input Text    id=edit-field-fname-reg    Usha
    Input Text    id=edit-field-lname    Bennur
    Input Text    id=edit-mail    ushabm@gmail.com
    Input Text    id=edit-field-company-name-registration    Google
    Select From List By Label    id=edit-field_business_focus_reg   IT consulting
    Click Element    name=op
    Close Browser