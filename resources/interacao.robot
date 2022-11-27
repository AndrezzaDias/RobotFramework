*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#Dados do teste
${NomeDaMusica}         Black (Live) - MTV Unplugged - Pearl Jam
#Elementos
${Input_Pesquisa}       //input[@id="search"]
${Button_Pesquisa}      //button[@id="search-icon-legacy"]
${Primeiro}             (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}                //img[@src="https://yt3.ggpht.com/ytc/AMLnZu8ey9CmKyjrr7cr0CqwiV9wudOgJn1-cvl7WQMQ=s48-c-k-c0x00ffffff-no-rj-mo"]
***Keywords***
Quando digita o nome da música
    Input text      ${Input_Pesquisa}       ${NomeDaMusica}  

E clico no botão buscar
    Click Element   ${Button_Pesquisa}

E clico na peimeia opção da lista
    Wait Until Element Is Visible       ${Primeiro}         20
    Click Element   ${Primeiro}  

Então o video é executado
    Wait Until Element Is Visible       ${Prova}            20
    Element Should Be Visible           ${Prova} 
    Sleep                               10s    
    Capture Page Screenshot
    Close Browser