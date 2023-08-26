*** Settings ***
Documentation    Essa suite testa o site https://www.magazineluiza.com.br/
Resource         magazine_resources.robot

Test Setup        Abrir o Navegador
Test Teardown     Fechar o Navegador 

*** Test Cases ***
Caso de Teste 01 - Acessao ao menu "Monitor"
    [Documentation]    Este teste verifica a disponibilidade
    ...    do Menu Monitor através do dos menus "Todos Despartamentos" -> "Informática"
    [Tags]    monitor    menus

    
    
    Acessar a homepage do site "https://www.magazineluiza.com.br/"
    Entrar no menu "Todos Departamentos" 
    Verificar menu "Todos Despartamentos" 
    Entrar no menu "Informática" 
    Verificar menu "Informática" 
    Entrar menu "Monitor"
    Verificar menu "Monitor" 

Caso de Teste 02 - Pesquisa de um Produto 
    [Documentation]    Este teste verifica a funcionalidade de busca
    [Tags]    pesquisar    searchbar
    
    Acessar a homepage do site "https://www.magazineluiza.com.br/"  
    Digitar o nome do produto "RX 4600G"
    Clicar no botão de pesquisa 
    Validar se existe um produto listado 
