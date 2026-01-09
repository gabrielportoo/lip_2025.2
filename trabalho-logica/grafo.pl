aresta(0, 1).
aresta(1, 2).
aresta(2, 3).
aresta(0, 3).
aresta(1, 3).


adjacente(X, Y) :- aresta(X, Y).
adjacente(X, Y) :- aresta(Y, X).

caminho([_]). 

caminho([X, Y | Resto]) :-
    adjacente(X, Y),
    caminho([Y | Resto]).

grau(V, G) :-
    findall(Vizinho, adjacente(V, Vizinho), ListaVizinhos),
    length(ListaVizinhos, G).