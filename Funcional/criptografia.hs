criptografa:: [Int] -> [Int]
criptografa lista = passo2(passo1 lista)

somaListas::[Int]->[Int]->[Int] 
somaListas [] [] = []
somaListas (h:t) (h1:t1) = (h+h1) : somaListas t t1

passo1::[Int]->[Int]
passo1 [] = []
passo1 (lista) = somaListas lista [1..length lista]

passo2:: [Int] -> [Int]
passo2 [] = []
passo2 (h:x:t) = h^2 : 2^x : passo2 t
passo2 (h:t) = h^2 : passo2 t

main::IO()
main =  do
        list <- getLine
        let output = criptografa(read list)
        print output