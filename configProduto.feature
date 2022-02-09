            #language: pt

            Funcionalidade: 1- Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Verificação de obrigatoriedade cor, tamanho e quantidade
            Dado que eu esteja na tela de produto
            E não seleciono nenhuma cor e tamanho
            E altero a quantidade para '0'
            Então deve exibir uma mensagem de obrigatoriedade

            Cenário: Limite de produtos por venda
            Dado que eu esteja na tela do carinho
            E tenha mais de '11' itens
            Quando eu clicar em finalizar pedido
            Então deve exibir a validacao, de no maximo '10' produtos por venda

            Cenário: Verificar funcionalidad do botão limpar
            Dado que eu esteja na tela de um produto
            E seleciono tamanho e cor
            Quando clico no botão Limpar
            Então deve limpar voltar para o estado original

           