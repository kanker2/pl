:- module(_,_, [pure,assertions,regtypes]).
author_data('Arce', 'Vera', 'Kevin Oscar', '24A029').

% Exercise 1:
% Given the standard definition of natural number:
natural(0).
natural(s(X)) :-
    natural(X).

% 1.a sum(X,Y,Z)
sum(0,X,X):-
    natural(X).
sum(s(X),Y,s(Z)):-
    sum(X,Y,Z).

% 1.b even(X)
even(0).
even(s(s(X))):-
    even(X).

% 1.c odd(X)
odd(s(X)):-
    even(X).