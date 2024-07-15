*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot


*** Keywords ***
User signup with ${email} and ${first_name} and ${last_name} and ${phone_number} and ${new_password} and ${confirm_password}
    CommonKeywords.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text    name=email    ${email}
    CommonKeywords.Wait until element is ready then input text    name=firstName    ${first_name}
    CommonKeywords.Wait until element is ready then input text    name=lastName    ${last_name}
    CommonKeywords.Wait until element is ready then input text    name=phoneNumber    ${phone_number}
    CommonKeywords.Wait until element is ready then input text    name=newPassword    ${new_password}
    CommonKeywords.Wait until element is ready then input text    name=confirmPassword    ${confirm_password}
    CommonKeywords.Wait until element is ready then click element    name=consent
    CommonKeywords.Wait until element is ready then click element
    ...    xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

Futureskill should display the opt signup message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify message    ${expected_message}

Futureskill should display the signup failure message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify message    ${expected_message}
