descend(X,Y) :- child(X,Z),
                descend(Z,Y).
descend(X,Y) :- child(X,Y).
