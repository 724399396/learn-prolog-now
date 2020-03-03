set([],[]).
set([H|T],L2) :- set(T, L2),
                 member(H, L2).
set([H|T],[H|L2]) :- set(T,L2).


flattenAcc([],Acc, Acc).
flattenAcc([H|T], Acc, Res) :- flattenAcc(T, Acc, Res1),
                               flattenAcc(H, Res1, Res).
flattenAcc(X, Acc, [X|Acc]).

flatten(X,Y) :- flattenAcc(X,[],Y).
