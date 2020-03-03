accRev([], Acc, Acc).
accRev([H|T], Acc, R) :- accRev(T, [H|Acc], R).

reverse(L, RevL) :- accRev(L, [], RevL).

palindrome(List) :- reverse(List, RevList),
                    List = RevList.
