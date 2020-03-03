accRev([], Acc, Acc).
accRev([H|T], Acc, R) :- accRev(T, [H|Acc], R).

reverse(L, RevL) :- accRev(L, [], RevL).

second(X, [_,X|_]).

swap12([X,Y|T1], [Y,X|T1]).

final(X, List) :- reverse(List,[X|_]).

toptail([_,_|T], T).


swapf1(List1, List2) :- append([X], _, List1),
                        append([_|I], [X], List2),
                        append([_|I], [Y], List1),
                        append([Y], _, List2).
