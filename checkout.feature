#language: pt


Feature: Login na plataforma

  Scenario: Login com dados válidos
        Given Estou na página de login
        When Eu insiro dados de login válidos
        And Eu clico no botão "Entrar"
        Then Sou direcionado para a tela de checkout

  Scenario: Login com dados inválidos
        Given Estou na página de login
        When Eu insiro dados de login inválidos
        And Eu clico no botão "Entrar"
        Then Deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
