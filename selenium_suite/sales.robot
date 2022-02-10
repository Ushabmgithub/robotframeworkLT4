*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
TC1 Valid Login
    Open Browser  url=https://www.salesforce.com/in/form/signup/freetrial-sales/  browser=chrome   executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Input Text    id=UserFirstName-sMku   John
    Input Text    id=UserLastName-E6wW    wick
    Input Text    id=UserEmail-c00N    john@gmail.com
    Input Text    id=UserTitle-tQGF    IT Manager
    Select From List By Label    id=CompanyEmployees-5qe5  101-500
    Select From List By Label    id=CompanyCountry-eE8V     United Kingdom
    Click Element    Xpath=//*[@id="signup_form_0TNf"]/div[5]/div/div[1]
    Click Button    name=start my free trial