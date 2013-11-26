-- avaliador de expressões pós-fixas

-- importa os módulos necessários
import TPilha
import Operacoes

-- recursão de calda utilizada para calcular uma expressão pós-fixa
calcular' :: [String]->TPilha Double->Double
calcular' [] p = (top p)
calcular' (h:t) p
  -- soma o primeiro e segundo elementos da pilha, e insere o resultado da soma
  -- no topo da pilha já sem os elementos utilizados na operação
  |h == "+" = calcular' t ( push ( soma (top p) (top (pop p)) ) (pop (pop p)) )
  -- subtrai o primeiro e segundo elementos da pilha, e insere o resultado da
  -- subtração no topo da pilha já sem os elementos utilizados na operação
  |h == "-" = calcular' t ( push ( subtrai (top p) (top (pop p)) ) (pop (pop p)) )
  -- multiplica o primeiro e segundo elementos da pilha, e insere o resultado da
  -- multiplicação no topo da pilha já sem os elementos utilizados na operação
  |h == "*" = calcular' t ( push ( multiplica (top p) (top (pop p)) ) (pop (pop p)) )
  -- divide o primeiro e segundo elementos da pilha, e insere o resultado da
  -- divisão no topo da pilha já sem os elementos utilizados na operação
  |h == "/" = calcular' t ( push ( divide (top p) (top (pop p)) ) (pop (pop p)) )
  -- se a cabeça da lista não for uma operação, insere o número na pilha
  |otherwise = calcular' t (push (read h::Double) p)

-- avalia uma expressão pós-fixa e calcula seu resultado
calcular :: String->Double
calcular expressao = calcular' (words expressao) empty
