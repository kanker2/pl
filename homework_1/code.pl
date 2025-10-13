:- module(_,_, [pure]).
author_data('Arce', 'Vera', 'Kevin Oscar', '24A029').

% Exercise 1: Who eliminates whom?

% --- Facts ---
% statement 5:
controls(corleone, betting).
controls(solozzo, drugs).


% --- Relations ---
% statement 1:
eliminates(corleone, solozzo) :-
    controls(corleone, manhattan),
    controls(corleone, brooklyn).

% statement 2:
eliminates(solozzo, corleone) :-
    controls(solozzo, drugs),
    supports(roth, solozzo).

% statement 3 2nd part:
controls(corleone, manhattan) :-
    supports(roth, corleone).
controls(corleone, brooklyn) :-
    supports(roth, corleone).

% statement 3 1st part:
controls(solozzo, bronx) :-
    supports(roth, solozzo).
controls(solozzo, harlem) :-
    supports(roth, solozzo).

% statement 4:
supports(roth, Person) :-
    guarantees_impunity(Person, roth).

% statement 6:
controls(Person, police) :-
    controls(Person, betting).

% statement 7:
guarantees_impunity(Controller, Person) :-
    controls(Controller, police).