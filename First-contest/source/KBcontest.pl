domanda1('qual è lo stato più piccolo d\'Europa?').
domanda2('quante volte è stato presidente Giulio Andreotti?').
domanda3('quale tra questi mari non bagna l\'Italia?').
domanda4('a quando risale l\'invenzione dello champagne da parte di Don Perignon?').
domanda5('chi è l\'autore del "cantico delle creature"?').
domanda6('qual è lo strato dell\'atmosfera che si trova più in basso?').
domanda7('dove si svolgerà il prossimo campionato del mondo di calcio?').

risposta('vaticano').
risposta('litchenstein').
risposta('principatoDiMonaco').

risposta(3).
risposta(5).
risposta(7).
risposta(14).

risposta('tirreno').
risposta('ionio').
risposta('mediterraneo').
risposta('morto').

risposta(1677).
risposta(1452).
risposta(1668).
risposta(1790).

risposta('danteAlighieri').
risposta('sanFrancesco').
risposta('petrarca').
risposta('guittone').

risposta('stratosfera').
risposta('troposfera').
risposta('termosfera').
risposta('mesosfera').

risposta('brasile').
risposta('italia').
risposta('qatar').
risposta('sudan').


corretto('qual è lo stato più piccolo d\'Europa?', 'vaticano').
corretto('quante volte è stato presidente Giulio Andreotti?', 7).
corretto('quale tra questi mari non bagna l\'Italia?', 'morto').
corretto('a quando risale l\'invenzione dello champagne da parte di Don Perignon?', 1668).
corretto('chi è l\'autore del "cantico delle creature"?','sanFrancesco' ).
corretto('qual è lo strato dell\'atmosfera che si trova più in basso?','troposfera' ).
corretto('dove si svolgerà il prossimo campionato del mondo di calcio?','qatar' ).


rispostedomanda1(['vaticano','litchenstein','principatoDiMonaco']).
rispostedomanda2([3,5,7,14]).
rispostedomanda3(['tirreno','ionio','mediterraneo','morto']).
rispostedomanda4([1677,1452,1668,1790]).
rispostedomanda5(['danteAlighieri','sanFrancesco','petrarca','guittone']).
rispostedomanda6(['stratosfera','troposfera','termosfera','mesosfera']).
rispostedomanda7(['brasile','italia','qatar','sudan']).

rispondoalla1(Y):-corretto('qual è lo stato più piccolo d\'Europa?',Y), member(Y,['vaticano','litchenstein','principatoDiMonaco']), risposta(Y), write(corretto), nl.

rispondoalla2(Y):-corretto('quante volte è stato presidente Giulio Andreotti?',Y), member(Y,[3,5,7,14]), risposta(Y), write(corretto), nl.

rispondoalla3(Y):-corretto('quale tra questi mari non bagna l\'Italia?',Y), member(Y,['tirreno','ionio','mediterraneo','morto'] ), risposta(Y), write(corretto), nl.

rispondoalla4(Y):-corretto('a quando risale l\'invenzione dello champagne da parte di Don Perignon?',Y), member(Y,[1677,1452,1668,1790]), risposta(Y), write(corretto), nl.

rispondoalla5(Y):-corretto('chi è l\'autore del "cantico delle creature"?',Y), member(Y, ['danteAlighieri','sanFrancesco','petrarca','guittone']), risposta(Y), write(corretto), nl.

rispondoalla6(Y):-corretto('qual è lo strato dell\'atmosfera che si trova più in basso?',Y), member(Y,['stratosfera','troposfera','termosfera','mesosfera']), risposta(Y), write(corretto), nl.

rispondoalla7(Y):-corretto('dove si svolgerà il prossimo campionato del mondo di calcio?',Y), member(Y,['brasile','italia','qatar','sudan']), risposta(Y), write(corretto), nl.


test1(A):-rispondoalla1(A).
test1(_):-write('sbagliato, riprova!'), nl, check1.
test2(B):-rispondoalla2(B).
test2(_):-write('sbagliato, riprova!'), nl, check2.
test3(C):-rispondoalla3(C).
test3(_):-write('sbagliato, riprova!'), nl, check3.
test4(D):-rispondoalla4(D).
test4(_):-write('sbagliato, riprova!'), nl, check4.
test5(E):-rispondoalla5(E).
test5(_):-write('sbagliato, riprova!'), nl, check5.
test6(F):-rispondoalla6(F).
test6(_):-write('sbagliato, riprova!'), nl, check6.
test7(O):-rispondoalla7(O).
test7(_):-write('sbagliato, riprova!'), nl, check7.

check1 :- read(G), test1(G).
check2 :- read(H), test2(H).
check3 :- read(I), test3(I).
check4 :- read(L), test4(L).
check5 :- read(M), test5(M).
check6 :- read(N), test6(N).
check7 :- read(P), test7(P).

intro:- nl, nl, write('*****Benvenuto nel nostro test*****'),nl, nl.
quesito1 :- domanda1(X), write(X), nl, rispostedomanda1(Y), write(Y), nl, check1, nl.
quesito2 :- domanda2(X), write(X), nl, rispostedomanda2(Y), write(Y), nl, check2, nl.
quesito3 :- domanda3(X), write(X), nl, rispostedomanda3(Y), write(Y), nl, check3, nl.
quesito4 :- domanda4(X), write(X), nl, rispostedomanda4(Y), write(Y), nl, check4, nl.
quesito5 :- domanda5(X), write(X), nl, rispostedomanda5(Y), write(Y), nl, check5, nl.
quesito6 :- domanda6(X), write(X), nl, rispostedomanda6(Y), write(Y), nl, check6, nl.
quesito7 :- domanda7(X), write(X), nl, rispostedomanda7(Y), write(Y), nl, check7, nl.
fine:- nl, write('******hai riposto correttamente a tutte le domande*****'), nl, nl.

start_test :- intro, quesito1, quesito2, quesito3, quesito4, quesito5, quesito6, quesito7, fine.








