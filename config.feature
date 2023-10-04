#language: pt


Feature: Tela de cadastro - Checkout

  Scenario: Cadastro com dados válidos
        Given Estou na tela de cadastro
        When Eu preencho todos os campos obrigatórios
        And Eu clico no botão "Finalizar Cadastro"
        Then Deve exibir uma mensagem de "Cadastro Realizado com Sucesso"

  Scenario: Tentativa de cadastro com e-mail inválido
        Given Estou na tela de cadastro
        When Eu preencho o campo de e-mail com um formato inválido
        And Eu clico no botão "Finalizar Cadastro"
        Then Deve exibir uma mensagem de "Erro e-mail inválido"

  Scenario: Tentativa de cadastro com campos vazios
        Given Estou na tela de cadastro
        When Eu deixo campos obrigatórios em branco
        And Eu clico no botão "Finalizar Cadastro"
        Then Deve exibir uma mensagem de alerta "Campos Vazios"
