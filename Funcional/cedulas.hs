qtdCedulas :: Int -> Int
qtdCedulas valor| valor>=100 = valor `div` 100 + qtdCedulas(valor `mod` 100)
                | valor>=50  = valor`div`50 + qtdCedulas(valor `mod` 50)
                | valor>=20  = valor`div`20 + qtdCedulas(valor `mod` 20)
                | valor>=10  = valor`div`10 + qtdCedulas(valor `mod` 10)
                | valor>=5   = valor`div`5 + qtdCedulas(valor `mod` 5)
                | valor>=2   = valor`div`2 + qtdCedulas(valor `mod` 2)
                | otherwise  = valor

main :: IO()
main =  do
        valor <- getLine
        let output = qtdCedulas(read valor)
        print output