adiciona(X, L1, [X|L1]).


apaga(_, [], []).


apaga(X, [X|T], L2) :- 
    apaga(X, T, L2).


apaga(X, [H|T], [H|L2]) :- 
    X \= H, 
    apaga(X, T, L2).



concatena([], L2, L2).


concatena([H|T], L2, [H|Resto]) :- 
    concatena(T, L2, Resto).



membro(X, [X|_]).


membro(X, [_|T]) :- 
    membro(X, T).


comprimento(0, []).


comprimento(N, [_|T]) :- 
    comprimento(N1, T), 
    N is N1 + 1.