additiontable(A) :-
    member(B,A),
    member(C,A),
    D is B + C,
    assert(sum(B,C,D)),
    fail.
