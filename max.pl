max(X,Y,Y) :- X =< Y.
max(X,Y,X) :- X>Y.

greenMax(X,Y,Y) :- X =< Y, !.
greenMax(X,Y,X) :- X>Y.

redMax(X,Y,Y) :- X =< Y, !.
redMax(X,_,X).
