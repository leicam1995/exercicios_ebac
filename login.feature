#language: pt


Feature: Configurar produto

  Scenario: Configurar produto com seleções obrigatórias
        Given Estou na página de configuração de produto
        When Eu seleciono a cor, tamanho e quantidade
        And Eu clico no botão "Adicionar ao Carrinho"
        Then O produto é adicionado ao carrinho

  Scenario: Limite de produtos por venda
        Given Estou na página de configuração de produto
        When Eu seleciono mais de 10 produtos
        Then Deve exibir uma mensagem de "Limite Alcançado"

  Scenario: Limpar seleções
        Given Eu selecionei a cor, tamanho e quantidade
        When Eu clico no botão "Limpar"
        Then As seleções são resetadas

Feature: Seleção de produtos

  Scenario: Configurar produto com seleções obrigatórias
        Given Estou na página de configuração de produto
        When Eu seleciono a cor <cor>, o tamanho <tamanho> e a quantidade <quantidade>
        And Eu clico no botão "Adicionar ao Carrinho"
        Then O produto é adicionado ao carrinho

    Examples:
         | cor      | tamanho | quantidade |
         | Vermelha | M       | 5          |
         | Azul     | P       | 10         |
         | Verde    | G       | 2          |

