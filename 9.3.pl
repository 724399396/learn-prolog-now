termtype(Term,atom) :- atom(Term).
termtype(Term,number) :- number(Term).
termtype(Term,constant) :- atomic(Term).
termtype(Term,variable) :- var(Term).
termtype(Term,simple_term) :- functor(Term,_,A), A == 0.
termtype(Term,complex_term) :- functor(Term,_,A), A > 0.
termtype(_,term).
