main:- read(A),
    read(B),
    compDecomp(A, B, Ans),
    write(Ans),
    halt.
    

compDecomp(N, List, Ans):- compressList(N, List, Ans).
compDecomp(List, N, Ans):- decompressList(List, List1),
                        divide(N, List1, Ans).

removeLast([], []).
removeLast([_|[]], []).
removeLast([H|T], [H|X]):- removeLast(T, X).

compressList(_, [], []).
compressList(N, [H|[]], [H1|[]]):- H1 is H * N.
compressList(N, [H|T], [H1|T1]):- H1 is H * N,
                                removeLast(T, L),
                                compressList(N, L, T1).

decompressList([H|T], List):- reverse([H|T], [H1|T1]),
                            length([H|T], R),
                            (R mod 2 =:= 0 -> append([H|T], [H1|T1], List);
                            append([H|T], T1, List)).
                            
divide(_, [], []).
divide(N, [H|T], [H1|T1]):- H1 is H/N,
                        divide(N, T, T1).