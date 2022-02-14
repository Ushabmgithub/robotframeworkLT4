*** Settings ***
Library     SeleniumLibrary
Library    DateTime
Library    OperatingSystem

*** Test Cases ***
TC1 Print Name
    [Tags]  high
    Log To Console    hello,everyone
    Log To Console  Usha

TC2 Print Date
    ${date}     Get Current Date
    Log To Console  ${date}

TC3 Store Data

    Set Local Variable    ${name}      usha
    Log To Console    ${name}


    ${title}    Set Variable   robotframeworksession
    Log To Console   ${title}

TC4 Add Number

    Set Local Variable    ${number1}    4
    Set Local Variable    ${number2}    3
    ${res}    Evaluate    ${number1}+${number2}
    Log To Console    ${res}
    
TC5 area of circle

     Set Local Variable    ${radius}     10
     ${res}  Evaluate      ${radius}*${radius}*3.14
     Log To Console    ${res}

TC6
     Set Local Variable    ${browser}    chrome

     IF    '${browser}' == 'chrome'
            Log To Console    Yes! It's chrome
     END

TC7 For loop
     FOR  ${i}  IN  RANGE  1   11 1
         Log To Console  ${i}
     END
