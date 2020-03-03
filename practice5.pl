accMin([], Min, Min).
accMin([H|T], Acc, Min) :- H < Acc,
                           accMin(T,H,Min).
accMin([H|T], Acc, Min) :- H >= Acc,
                           accMin(T,Acc,Min).

scalarMult(_, [], []).
scalarMult(X, [H1|T1], [H2|T2]) :- H2 is X * H1,
                                   scalarMult(X, T1,T2).

dot([],[],0).
dot([H1|T1],[H2|T2],X) :- dot(T1,T2,Y),
                          X is H1*H2 + Y.
