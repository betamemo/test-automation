*** Settings ***
Library             SeleniumLibrary
Resource            ../keywords/LoginPageKeywords.robot
Resource            ../keywords/HomePageKeywords.robot
Variables           ../resources/config/config.yaml
Variables           ../resources/testdata/testdata.yaml

Suite Setup         Open Browser    ${baseUrl}    chrome
Suite Teardown      Close Browser


*** Test Cases ***
As a user, I can login with a valid password
    When User login with ${email} and ${valid_password}
    Then Futureskill should display homepage and greeting message as "สวัสดี"
    [Teardown]    User logout from futureskill

As a user, I cannot login with an invalid password
    When User login with ${email} and ${invalid_password}
    Then Futureskill should display the login failure message as "กรอกรหัสผ่านไม่ถูกต้อง"
