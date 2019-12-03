*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Log    I am inside test suite setup    
Suite Teardown    Log    I am inside test suite teardown
Task Setup    Log    I am inside task setup    
Task Teardown    Log    I am inside task teardown    
Default Tags    sanity

*** Tasks ***

MyFirstTest
    [Tags]    smoke
    Log    Hello First...  
    
MySecondTest
    Log    Hello Second...
    Set Tags    regression1  
    Remove Tags    regression1

MyThirdTest
    Log    Hello Third...  

MyFourthTest
    Log    Hello Fourth...  

# FirstSeleniumTest  
    # Open Browser   https:google.com    chrome 
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Automation Step By Step
    # Press Keys    name=q    ENTER
    # # Click Button    name=btnK    
    # Sleep    2        
    # Close Browser
    # Log    Test completed  
   

# SampleLoginTest
    # [Documentation]    This is sample login test
    # Open Browser    ${URL}        chrome
    # Set Browser Implicit Wait    10
    # LoginKW
    # Sleep    5
    # Click Element    id=welcome
    # Click Element    link=Logout    
    # Close Browser
    # Log    Test completed
    # Log    This test was executed by %{username} on %{os}
    # Log    Current Directory ${CURDIR}
    


*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123




*** Keywords ***
LoginKW
    Input Text        id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]
    Click Button      id=btnLogin    
