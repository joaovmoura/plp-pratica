main:- read(X),
    calculaSoma(X, 0).

calculaSoma(0, Soma):- write(Soma).

calculaSoma(N, Soma):- read(X),
    (X mod 2 =:= 0 -> NovaSoma is Soma + abs(X);
    NovaSoma is Soma - abs(X)),
    N2 is N-1,
    calculaSoma(N2, NovaSoma).