:- dynamic aunt/2.
sister(X, Y) :- woman(X), parent(Z, X), parent(Z, Y), (X \= Y).
aunt(X, Y) :- parent(Z, Y), sister(X, Z).