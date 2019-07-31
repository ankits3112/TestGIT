*** Settings ***
Library    SeleniumLibrary
Test Setup    Log    Inside test case setup
Test Teardown    Log    Inside test teardown
Suite Setup    Log    Inside Suite setup
Suite Teardown    Log    Inside Suite teardown  
Default Tags    Sanity              

*** Test Cases ***
MyFirstTest
    [Tags]    Smoke
    Log    Hello First..
    
MySecondTest
    Log    Hello Second..
    
MyThirdTest
    Log    Hello Third.. 
    
MyFourthTest
    Log    Hello Fourth..
    
# MyFirstSeleniumTest
    # Open Browser    https://www.google.be/       chrome
    # Set Browser Implicit Wait    2
    # Input Text    name=q    asdfasfdsa
    # Press Keys    name=q    ENTER
    # Maximize Browser Window
    # Sleep    5       
    # Close Browser
    
# SampleLoginTest
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKeyWord
    # # Click Button    id=btnLogin    
    # Click Button    name=Submit
    # Click Element    id=welcome
    # Click Link    link=Logout        
    # # Sleep    5        
    # Close Browser
    # # How to use environment variables
    # Log    This test with executed by %{username} and on %{os}
    # Log    ${CURDIR}
    
*** Variables ***
# scalar variables
${URL}    https://opensource-demo.orangehrmlive.com/
# List variables
@{Credentials}    Admin    admin123
# Dictionary variables
&{Login Data}    username=Admin    password=admin123

# Built in Variables


*** Keywords ***
# Library Keywords (Ex: Input Text) and User defined Keywords like below
LoginKeyWord
    Input Text    id=txtUsername    &{Login Data}[username]
    Input Password    id=txtPassword    &{Login Data}[password]
