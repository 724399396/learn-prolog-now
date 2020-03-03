descend(X,Y) :- child(X,Y).
descend(X,Y) :- descend(Z,Y),
                child(X,Z).
