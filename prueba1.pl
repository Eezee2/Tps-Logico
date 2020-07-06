

viveEnMansionDreadbury(tiaAgata).
viveEnMansionDreadbury(elCarnicero).
viveEnMansionDreadbury(charles).

odiaA(tiaAgata,Personaje):-
    viveEnMansionDreadbury(Personaje),
    Personaje \= elCarnicero,
    Personaje \=tiaAgata.

odiaA(charles,Personaje):-
    viveEnMansionDreadbury(Personaje),
    not(odiaA(tiaAgata,Personaje)).

odiaA(elCarnicero,Personaje):-
    odiaA(tiaAgata,Personaje).

mataA(Personaje,Victima):-
    
    viveEnMansionDreadbury(Personaje),
    odiaA(Personaje,Victima),
    not(esMasRicoQueTiaAgata(Personaje)).

esMasRicoQueTiaAgata(Personaje):-
    viveEnMansionDreadbury(Personaje),
    not(odiaA(elCarnicero,Personaje)).



/* mataA(Asesino,tiaAgata).
        Asesino=charles.

2_  odiaA(_,milhouse).
        false.

    odiaA(charles,Odiados).
        Odiados = tiaAgata ;
        Odiados = elCarnicero ;
        false.

    odiaA(Alguien,tiaAgata).
        Alguien = charles ;
        false.

    odiaA(EstaPersona,OdiaA). 
        EstaPersona = tiaAgata,
        OdiaA = charles ;
        EstaPersona = charles,
        OdiaA = tiaAgata ;
        EstaPersona = charles,
        OdiaA = elCarnicero ;
        EstaPersona = elCarnicero,
        OdiaA = charles.

    odiaA(elCarnicero,_).



*/