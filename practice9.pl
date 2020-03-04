nested_pptree_list([],_).
nested_pptree_list([H|T], Level) :- nl,
                                    nested_pptree(H,Level),
                                    nested_pptree_list(T,Level).

nested_pptree(T,Level) :- functor(T,_,A),
                          A > 1,
                          T =.. [F|Args],
                          tab(Level),
                          write(F),write('('),
                          NewLevel is Level + 1,
                          nested_pptree_list(Args,NewLevel),
                          write(')').

nested_pptree(T,Level) :- tab(Level),
                          write(T).

pptree(T) :- nested_pptree(T,0).


:- op(200, fx, not).
:- op(200, xfx, [and,or]).
:- op(300, xfx, implies).
