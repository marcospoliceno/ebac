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