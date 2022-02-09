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

            Funcionalidade: 2 - Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu esteja na tela de login(autenticação)

            Cenário: Autenticação válida
            Quando eu digito o usuario "juca@teste.com"
            E a senha "teste123"
            Então deve ser direcionado para a tela de checkout

            Cenário:
            Quando eu digito o usuario "joao@teste1.c"
            E a senha "123test"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuarios
            Quando eu digitar <usuario>
            E <senha>
            Então deve ser autenticado com sucesso

            Exemplos:
            | usuario           | senha        |
            | "juca@teste.com"  | "teste123"   |
            | "juca2@teste.com" | "teste1234"  |
            | "juca3@teste.com" | "teste12345" |


            Funcionalidade:  3 - Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que esteja na tela de checkout


            Cenário: Cadastro de faturamento
            E preencho os campos obrigatórios, sinalizados com asteriscos
            Então meu cadastro sera realizado com sucesso

            Cenário: Validacao do campo e-mail
            E insiro o <e-mail>
            Quando realizo a saida do campo
            Entao o sistema exibe a <mensagem>

            Exemplos:
            | e-mail       | mensagem                      |
            | "juca@teste" | "E-mail com formato invalido" |
            | "juca2@.com" | "E-mail com formato invalido" |
            | "juca3.br"   | "E-mail com formato invalido" |

            Cenário: Alerta para campos em branco
            Quando nao insiro nenhuma informacao em um campo obrigatório
            E mudo para outro campo
            Entao exibe uma mensagem de alerta para o campo especifico