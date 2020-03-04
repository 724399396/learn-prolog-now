is_a(a,witch).
likes(c).
are(a,b).
and(c,d).
famous(a).

:- op(300,xfx, [are, is_a]).
:- op(300,fx, likes).
:- op(200,xfy, and).
:- op(100,fy, famous).
