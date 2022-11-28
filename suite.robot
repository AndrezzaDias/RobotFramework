*** Settings ***
Resource    resources/youTube.robot
Resource    resources/interacao.robot



*** Test Cases ***
Cenário 1: Acesso o site do youtube
    Dado que eu acesso o site do YouTube 
Cenário 2: Executar vídeo no site do youTube
    Quando digita o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o video é executado


