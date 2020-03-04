:- dynamic sigmares/2.

sigma(1,1).
sigma(N,Sum) :- sigmares(N,Sum).
sigma(N,Sum) :- sigma(M,RecSum),
                N is M + 1,
                Sum is RecSum + N,
                assert(sigmares(N,Sum)).
