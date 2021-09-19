main:- read(X),
    calcPiramide(X,1,0).

calcPiramide(Restantes, BlocosAndar, Andares):- 
    Restantes >= BlocosAndar,
    X is Restantes - BlocosAndar,
    Y is BlocosAndar + 1,
    Z is Andares + 1,
    calcPiramide(X, Y, Z).
    
calcPiramide(Restantes, BlocosAndar, Andares):- Restantes < BlocosAndar,
    write(Andares).