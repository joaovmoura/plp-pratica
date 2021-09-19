nListas:: Int -> Int
nListas n | n< 0 = 0
          | otherwise = somaLista(geraLista (n)) + nListas (n-1)

somaLista:: [Int] -> Int
somaLista [] = 0
somaLista (head:tail) = head^2 + somaLista(tail)
            
geraLista:: Int -> [Int]
geraLista 0 = []
geraLista n = [1..n]

main::IO()
main =  do
        lista <- getLine
        let output = nListas(read lista)
        print output