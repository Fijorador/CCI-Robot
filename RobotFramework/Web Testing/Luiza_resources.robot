*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      Chrome
${URL}          https://www.magazineluiza.com.br/


*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Close Browser
    Capture Page Screenshot
    

Acessar a home page do site 
    
    Go To    url=${URL}
    Wait Until Element Is Visible    //a[contains(@class,'sc-fBWQRz gA-DDVX sc-iQbOkh kRXPUC sc-iQbOkh kRXPUC')]             
    ...    timeout=100
    
Entrar no menu Todos Departamentos
    Click Element
    ...    //a[@data-testid='link'][contains(.,'Todos os departamentos')]
       
Verificar se o menu "${MENU_ITEM}" fica disponível

    Wait Until Element Is Visible
    ...    locator=(//a[@data-testid='link'][contains(.,'${MENU_ITEM}')])[1] 
    ...    timeout=20
                
Acessar o menu "${MENU_ITEM}"    
    Click Element
    ...    locator=(//a[@data-testid='link'][contains(.,'${MENU_ITEM}')])[1]

Verificar se o submenu "${menu_item}" fica disponível
    Wait Until Element Is Visible
    ...    locator=(//p[contains(.,'${menu_item}')])[1]
    ...    timeout=150s
Acessar o submenu "${MENU_ITEM}"    
    Click Element
    ...    locator=(//p[contains(.,'${menu_item}')])[1]


Digitar o nome de produto "RX 4600G" no campo de pesquisa
    Wait Until Element Is Visible    //input[contains(@type,'search')]
    Input Text    //input[contains(@type,'search')]    RX 4600G
    Press Keys    //input[contains(@type,'search')]    ENTER

Verificar o resultado da pesquisa, listando o produto pesquisado (conferir um)
    Wait Until Element Is Visible    (//h2[@data-testid='product-title'][contains(.,'Cpu Pc Gamer Ryzen 5 4600G SSD 480GB 16GB DDR4 500W RX 550 - Option Info')])[1]
    ...    200
    Element Should Contain    (//h2[contains(@data-testid,'product-title')])[1]    4600G

