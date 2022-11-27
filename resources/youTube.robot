*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}          https://www.youtube.com/ 
${Browser}      gc

*** Keywords ***
Dado que eu acesso o site do YouTube
    Open Browser        ${URL}      ${Browser}     
    Maximize Browser Window