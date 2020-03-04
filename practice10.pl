nu1(T1,T2) :- \+ (T1 = T2).

nu2(T1,T2) :- T1 = T2, !, fail.
nu2(_,_).


nu3(T,T) :- !,fail.
nu3(_,_).

neg(Goal) :- Goal,!,fail.
neg(_).

unifiable([],_,[]).
unifiable([H|T],Term, Left) :- \+(H = Term),
                               !,
                               unifiable(T,Term,Left).

unifiable([H|T],Term, [H|Left]) :- unifiable(T,Term,Left).
