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

% Exercise 2:
% Using the predicates of the previous exercise, write also the following predicates:

% 2.a add_to_list(L,N,SL)
% Holds if and only if the list SL is the result of adding N
%  to each of the elements of list L

natlist([]).
natlist([X|L]) :- natural(X), natlist(L).

add_to_list(L,0,L) :- natlist(L).
add_to_list([], X, []) :- natural(X).
add_to_list([XL|L],X,[XSL|SL]) :-
    natural(X),
    sum(XL,X,XSL),
    add_to_list(L,X,SL).

% 2.b evens_list(L,Ps)
% Holds if and only if Ps is a list that contains the numbers
%  that are even in list L

evens_list([], []).
evens_list([XL|L], []) :-
    odd(XL),
    evens_list(L, []).
evens_list([E|L], [E|Ps]) :-
    even(E),
    evens_list(L,Ps).
evens_list([OL|L], Ps):-
    odd(OL),
    evens_list(L,Ps).