likes(dora, carlos).
likes(dora, lia).
likes(dora, leo).
likes(dora, paulo).
likes(dora, juca).
likes(dora, rita).
likes(dora, dito).
likes(dora, pedro).
likes(carlos, dora).
likes(lia, leo).
likes(leo, paulo).
likes(paulo, juca).
likes(juca, dora).
likes(rita, dito).
likes(rita, carlos).
likes(dito, rita).
likes(pedro, filha).

%?- likes(carlos, Y).

rivais(A, B) :-
    likes(A, C),
    likes(B, C),
    not(A = B),
    A \= B, A @< B.

%?- rivais(X, Y)

amam(A, B) :-
    likes(A, B),
    likes(B, A),
    A \= B, A @< B.

%?- amam(X, Y)
