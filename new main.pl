digito(0).
digito(1).

binario([A, B, C]) :- digito(A), !, digito(B), digito(C).

% potencia(B,E,R)

potencia(_, 0, 1).
potencia(B,E,R) :-
 E > 0,
 ET is E-1,
 potencia(B, ET, RT),
 R is B*RT.

% Listas vazia: [] [H|T]

% imprime(Lista)
imprime([]) :- nl.
imprime([H|T]) :- write(H), nl,
imprime(T).

% possui(L, V)

possui([V|_], V).
possui([_|T], V) :- possui(T, V).

% concatena(A, B, C)
concatena([], L, L).
concatena([X|A], B, [X|C]) :- concatena(A, B, C).

% 1) Crie um predicado fatorial(N, R) que calcule o fatorial de N na variavel R.
 fatorial(0, 1).
 fatorial(N, R) :-
  N > 0,
  N1 is N - 1,
  fatorial(N1, R1),
  R is N * R1.

% 2) Crie um predicado para converter um numero inteiro decimal em binario.
 dec(0, [0]).
 dec(1, [1]).
 dec(N, B) :-
  N > 1,
  X is N mod 2,
  Y is N div 2,
  dec(Y, B1),
  append(B1, [X], B).

% 3) Considere a seguinte base de fatos sobre rodovias, com as distancias entre cidades:

rodovia(a, b, 25).
rodovia(a, d, 23).
rodovia(b, e, 32).
rodovia(b, c, 19).
rodovia(c, d, 14).
rodovia(c, f, 28).
rodovia(d, f, 30).
rodovia(e, f, 26).

% Crie o predicato distancia(C1, C2, D), que determina a distancia entre as cidades C1 e C2.
