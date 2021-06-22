*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]    this is some basic info about the test
    [Tags]    Smoke
    OPEN BROWSER    http://www.amazon.com   chrome
    Input Text    id=twotabsearchtextbox    Ferrari 458
    click button    id=nav-search-submit-button
    wait until page contains    results for "Ferrari 458"
    scroll element into view    css=#search > div.s-desktop-width-max.s-opposite-dir > div > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(6) > div > span > div > div > div:nth-child(3) > h2 > a > span
    click link    Bburago 26017R Ferrari 458 Spider Red 1/24 Diecast Model Car
    wait until element contains    breadcrumb-back-link    Back to results
    click button    id=add-to-cart-button
    wait until page contains    Cart subtotal (1 item)
    CLOSE BROWSER
