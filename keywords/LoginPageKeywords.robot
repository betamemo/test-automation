*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot


*** Keywords ***
User login to futureskill with ${email} and ${password}
    CommonKeywords.Wait until element is ready then click element    xpath=//button[text()="เข้าสู่ระบบ"]
    CommonKeywords.Wait until element is ready then input text    name=email    ${email}
    CommonKeywords.Wait until element is ready then input text    name=password    ${password}
    CommonKeywords.Wait until element is ready then click element
    ...    xpath=//button[@type="submit" and text()="เข้าสู่ระบบ"]

Futureskill should display the login failure validation message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify message    ${expected_message}
