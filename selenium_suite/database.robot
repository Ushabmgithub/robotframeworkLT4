*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
TC1 Valid Login
    Open Browser   url=https://www.db4free.net/.   browser=chrome   executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    Xpath=/html/body/div/div/div[1]/nav/div[2]/ul/li[7]/a
    Switch Window     phpMyAdmin
    Input Text      id=input_username    db123
    Input Password     id=input_password     test123
    Click Element    id=input_go
    Close Window
    Switch Window   db4free.net -MySQL Database for free
    Click Element     link=Donations
    Input Text        id=form_amount       -90
    Select From List By Label    id=form_currency         JPY
    Click Element    name=submit
    Close Browser

