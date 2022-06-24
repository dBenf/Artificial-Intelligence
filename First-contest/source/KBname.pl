genitore(gian, pino).
genitore(pino, rudi).
genitore(rudi, francesco).
genitore(francesco, nicola).


antenato(X, Y):- genitore(X, Y).


