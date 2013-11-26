-- módulo pilha
module TPilha (TPilha, push, pop, top, size, empty, isEmpty) where
  data TPilha p = Pilha [p]
    deriving (Eq, Ord, Show)

  -- constrói uma pilha vazia
  empty :: TPilha p
  empty = (Pilha [])

  -- verifica se a pilha está vazia
  isEmpty :: TPilha p->Bool
  isEmpty (Pilha []) = True
  isEmpty (Pilha _) = False

  -- calcula o tamanho da pilha
  size :: TPilha p->Int
  size (Pilha p) = length p

  -- insere um novo elemento na pilha
  push :: p->TPilha p->TPilha p
  push e (Pilha p) = Pilha(e:p)

  -- remove um elemento da pilha
  pop :: TPilha p->TPilha p
  pop (Pilha (_:t)) = Pilha t
  pop _ = error "Pilha.pop: Pilha vazia"

  -- elemento do topo da pilha
  top :: TPilha p->p
  top (Pilha (h:_)) = h
  top _ = error "Pilha.top: Pilha vazia"
