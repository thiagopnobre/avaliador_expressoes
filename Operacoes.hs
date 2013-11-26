-- observação: as operações estão com seus operandos invertidos, pois é desta
-- maneira que eles virão da pilha

-- módulo de operações
module Operacoes(soma, subtrai, multiplica, divide) where
  -- operação de soma
  soma :: Double->Double->Double
  soma n2 n1 = n1+n2

  -- operação de subtração
  subtrai :: Double->Double->Double
  subtrai n2 n1 = n1-n2

  -- operação de multiplicação
  multiplica :: Double->Double->Double
  multiplica n2 n1 = n1*n2

  -- operação de divisão
  divide :: Double->Double->Double
  divide n2 n1
    |n2 == 0 = error "Divisão por zero"
    |otherwise = n1/n2
