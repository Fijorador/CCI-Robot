*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.magazineluiza.com.br/
${URL2}    https://www.magazineluiza.com.br/


*** Keywords ***

Abrir o Navegador
    Open Browser    browser=chrome

Fechar o Navegador
    Close Browser

Acessar a homepage do site "https://www.magazineluiza.com.br/"
    Go To    url=${URL2}
    
Entrar no menu "Todos Departamentos"
    Click Element    locator=//a[@data-testid='link'][contains(.,'Todos os departamentos')]   

Verificar menu "Todos Despartamentos"
    Wait Until Element Is Visible     (//a[@data-testid='link'][contains(.,'Informática')])[1]

Entrar no menu "Informática"
    Click Element    locator=(//a[@data-testid='link'][contains(.,'Informática')])[1]

Verificar menu "Informática"  
    Wait Until Element Is Visible    (//p[@font-size='2'][contains(.,'Monitor')])[1]
Entrar menu "Monitor"
    Click Element    (//p[@font-size='2'][contains(.,'Monitor')])[1]

Verificar menu "Monitor"  
    Wait Until Page Contains    Monitores

Digitar o nome do produto "RX 4600G"
    Wait Until Element Is Enabled    //input[contains(@type,'search')]
    Input Text    //input[contains(@type,'search')]    RX 4600G
Clicar no botão de pesquisa    
    Press Keys    //input[contains(@type,'search')]    ENTER              
    Wait Until Page Contains Element    (//h2[contains(@data-testid,'product-title')])[1]    100      

Validar se existe um produto listado        
    Element Should Contain    (//h2[contains(@data-testid,'product-title')])[1]    4600G

