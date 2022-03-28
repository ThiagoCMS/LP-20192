se(deus, amor).
se(amor, cego).
se(steve_wonder, cego).

entao(A, B) :-
    (se(A, C), 
    se(C, B)); 
    se(A, B);
    (se(A, C),
    se(C, D),
    se(D, B)).

%?- entao(steve_wonder, deus)
