progenitor(jose, joao).
progenitor(jose, ana).
progenitor(maria, joao).
progenitor(maria, ana).


progenitor(ana, helena).
progenitor(ana, joana).


progenitor(joao, mario).


progenitor(helena, carlos).
progenitor(mario, carlos).


masculino(jose).
masculino(joao).
masculino(mario).
masculino(carlos).


feminino(maria).
feminino(ana).
feminino(helena).
feminino(joana).


pai(Pai, Filho) :- 
    progenitor(Pai, Filho), 
    masculino(Pai).


mae(Mae, Filho) :- 
    progenitor(Mae, Filho), 
    feminino(Mae).


irmao(X, Y) :- 
    progenitor(P, X), 
    progenitor(P, Y), 
    X \= Y, 
    masculino(X).


irma(X, Y) :- 
    progenitor(P, X), 
    progenitor(P, Y), 
    X \= Y, 
    feminino(X).


avo(Avo, Neto) :- 
    progenitor(P, Neto), 
    pai(Avo, P).


avoa(Avoa, Neto) :- 
    progenitor(P, Neto), 
    mae(Avoa, P).


tio(Tio, Sobrinho) :- 
    progenitor(P, Sobrinho), 
    irmao(Tio, P).


tia(Tia, Sobrinho) :- 
    progenitor(P, Sobrinho), 
    irma(Tia, P).


primo(X, Y) :- 
    progenitor(Z, X),
    (tio(Z, Y); tia(Z, Y)),
    masculino(X).

prima(X, Y) :- 
    progenitor(Z, X), 
    (tio(Z, Y); tia(Z, Y)), 
    feminino(X).


descendente(X, Y) :- 
    progenitor(Y, X).


descendente(X, Y) :- 
    progenitor(P, X), 
    descendente(P, Y).