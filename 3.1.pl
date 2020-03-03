doll(katarina, olga).
doll(olga, natsha).
doll(natsha, irina).

in(X,Y) :- doll(X,Y).
in(X,Y) :- doll(X,Z),
           in(Z,Y).
