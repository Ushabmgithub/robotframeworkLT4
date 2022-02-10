*** Variables ***
&{PERSONAL_DETAIL}     firstname=USHA    lastname=BM     mobile=8783675567

*** Test Cases ***
TC1
   Log To Console    ${PERSONAL_DETAIL}
   Log To Console    ${PERSONAL_DETAIL}[firstname]
   Log To Console    ${PERSONAL_DETAIL}[lastname]
   Log To Console    ${PERSONAL_DETAIL}[mobile]