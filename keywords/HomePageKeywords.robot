*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot


*** Keywords ***
Futureskill should display homepage and greeting message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify message    ${expected_message}

User logout from futureskill
    CommonKeywords.Wait until element is ready then click element    xpath=//button[@aria-haspopup="menu"]
    CommonKeywords.Wait until element is ready then click element    xpath=//div[contains(text(),"ออกจากระบบ")]
