subset([], _).
subset([H|T], [H|Set]) :- subset(T, Set).
subset(List, [_|Set]) :- subset(List, Set).
