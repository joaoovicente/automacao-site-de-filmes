#language: pt

@regressivo
Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @login_happy
    Cenário: Acesso
        Quando eu faço login com "joao@miranda.com" e "senha123"
        Então devo ser autenticado
        E devo ver "João Miranda" na área logada

    @login_hapless
    Esquema do Cenário: Login sem sucesso
        Quando eu faço login com <email> e <senha>
        Então não devo ser autenticado
        E devo ver mensagem de alerta <texto>

        Exemplos:
        | email                 | senha      | texto                          |
        | "vicente@miranda.com" | "senha123" | "Usuário e/ou senha inválidos" |
        | "joao@miranda.com"    | "abc123"   | "Usuário e/ou senha inválidos" |
        | "vicente@miranda.com" | "abc123"   | "Usuário e/ou senha inválidos" |
        | ""                    | "abcxpto"  | "Opps. Cadê o email?"          |
        | "teste@gmail.com"     | ""         | "Opps. Cadê a senha?"          |
 

    