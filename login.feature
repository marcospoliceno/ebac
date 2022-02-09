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


           