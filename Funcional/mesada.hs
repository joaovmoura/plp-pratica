klebinho :: Float -> Float -> Int-> String
klebinho mesada valor parcelas  | valor/fromIntegral(parcelas) > 0.4*mesada = "Compra negada"
                                | otherwise = "Compra liberada"
                                
main :: IO()
main = do
    mesada <- getLine
    valor <- getLine
    parcelas <- getLine
    let output = klebinho (read mesada) (read valor) (read parcelas)
    print output
