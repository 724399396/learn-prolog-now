help([]).
help([H|T]) :- groundterm(H),
               help(T).

groundterm(Term) :- nonvar(Term),
                    functor(Term,_,A), A == 0.
groundterm(Term) :- nonvar(Term),
                    Term =.. [_|Args],
                    help(Args).
