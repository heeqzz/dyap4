:-dynamic parent/2.
parent(pame, bob).
parent(tom, bob).
parent(pame,tonny).
parent(tom, tonny).
parent(tom, lize).

parent(bob, anne).
parent(bob, pate).
parent(bob, scot).
parent(alise, anne).
parent(alise, pate).
parent(alise, scot).
parent(lize, patric).
parent(den, patric).

parent(pate, jhim).
parent(mike, jhim).
parent(patric, arny).
parent(sara, arny).
parent(scot, jhon).
parent(mary, jhon).

:-dynamic woman/1.
woman(pame).
woman(lize).
woman(alise).
woman(pate).
woman(sara).
woman(anne).
woman(mary).

:-dynamic man/1.
man(bob).
man(tom).
man(tonny).
man(den).
man(mike).
man(patric).
man(scot).
man(jhim).
man(jhon).
man(arny).

married_couple(pame, tom).
married_couple(bob, alise).
married_couple(den, lize).
married_couple(mike ,pate).
married_couple(patric, sara).
married_couple(scot, mary).

father(X, Y) :- parent(X, Y), man(X).

first_coustin_brother(S,Y):-man(S),parent(X,Y),parent(A,X),S \= Y,parent(C,S),parent(A,C).

second_coustin_brother(S,Y):-man(S),parent(X,Y),parent(Z,X),parent(B,Z),S \= Y,parent(C,S),parent(A,C),parent(B, A), not(first_coustin_brother(S,Y)).

first_coustin_nephew(X,Y):-parent(A, X), parent(B, A), parent(Z, B), parent(Z, D), D\=B, parent(D, Y), X\=Y, man(X).

husband(X, Y):-man(X),  married_couple(X, Y).



 n_sibling(1, X, Y):-parent(Z, X), parent(Z, Y), X\=Y.
 n_sibling(N, X, Y):-parent(A, X), parent(B, Y), X\=Y, N1 is N-1, 
n_sibling(N1, A, B).
 n_coustin_brother(N,X,Y):-man(X), n_sibling(N,X,Y).










