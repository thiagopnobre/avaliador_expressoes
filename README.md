Avaliador de Expressões
=======================

Avalia uma expressão pós-fixa e calcula o seu resultado.

####Modo de execução:

Basta carregar o arquivo avaliador_expressoes.hs em um interpredor haskell e chamar a função calcular passando a expressão a ser calculada, no formato de uma string, separando tanto os operandos quanto os operadores por espaço.

Exemplo:

Hugs> `:load avaliador_expressoes.hs`

Main> `calcular "2 2 3 + -"`

`-3.0`

No caso acima, o resultado da expressão pós-fixa foi -3.0;

Este exemplo foi feito utilizando o interpretador Hugs aberto no mesmo diretório do arquivo carregado.