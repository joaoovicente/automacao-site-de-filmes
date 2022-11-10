#language:pt

@login
Funcionalidade: Remover filme
    Para que eu possa manter o catálogo atualizado
    Sendo que um gestor de catálogo que encontrou um título cancelado/indesejado ou que não tem uma boa aceitação pelo público
    Posso remover este item

    @remove_movie
    Cenario: Excluir filme
        Dado que "dbz" está no catálogo
        Quando eu removo este item
        E eu confirmo a solicitação
        Então este item deve ser removido do catálogo

    @cancel_rm_movie
    Cenario: Desistir da exclusão
        Dado que "10_coisas" está no catálogo
        Quando eu removo este item
        E cancelo a solicitação
        Então este item deve permanecer no catálogo