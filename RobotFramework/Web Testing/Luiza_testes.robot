*** Settings ***
Documentation       Essa suite testa o site https://www.magazineluiza.com.br/
Resource            Luiza_resources.robot

Test Setup          Abrir o navegador
# Test Teardown       Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Monitor"
    [Documentation]    Este teste verifica o menu Todos Departamentos,
...    o menu Informatica e o menu Monitor
    [Tags]    menus

    Acessar a home page do site 
    Entrar no menu Todos Departamentos
    Verificar se o menu "Informática" fica disponível
    Acessar o menu "Informática"
    Verificar se o submenu "Monitor" fica disponível   
    Acessar o submenu "Monitor"

Caso de Teste 02 - Pesquisa de Produto
    [Documentation]    Este teste verifica a busca de um produto
    [Tags]    busca_produtos unitaria 
    Acessar a home page do site
    Digitar o nome de produto "RX 4600G" no campo de pesquisa 
    Verificar o resultado da pesquisa, listando o produto pesquisado (conferir um)  
