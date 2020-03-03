aEven --> [].
aEven --> l,aEven.

l --> [a,a].

s --> s_ad.

s_ad --> s_bc.
s_ad --> xa,s_ad,xd.

s_bc --> [].
s_bc --> xb,s_bc,xc.

xa --> [a].
xb --> [b,b].
xc --> [c,c].
xd --> [d].


prop --> p.
prop --> q.
prop --> r.
prop --> not,prop.
prop --> ls, prop, and, prop, rs.
prop --> ls, prop, or, prop, rs.
prop --> ls, prop, implies, prop, rs.

not --> [not].
ls --> ['('].
rs --> [')'].
and --> [and].
or --> [or].
implies --> [implies].
p --> [p].
q --> [q].
r --> [r].
