*** Settings ***
Library             SeleniumLibrary
Resource            ../keywords/SignupPageKeywords.robot
Variables           ../resources/config/config.yaml
Variables           ../resources/testdata/testdata.yaml

Suite Setup         Open Browser    ${baseUrl}    chrome
Suite Teardown      Close Browser


*** Test Cases ***
As a user, I can signup with a new email
    When User signup with ${new_email} and ${first_name} and ${last_name} and ${phone_number} and ${new_password} and ${confirm_password}
    Then Futureskill should display the opt signup message as "ระบบได้ส่งรหัส OTP ไปยังเบอรโ์ทรศัพท์"

As a user, I cannot signup with an used phone number
    When User signup with ${old_email} and ${first_name} and ${last_name} and ${phone_number} and ${new_password} and ${confirm_password}
    Then Futureskill should display the signup failure message as "เบอร์โทรศัพท์ นี้ถูกใช้งานแล้ว"
