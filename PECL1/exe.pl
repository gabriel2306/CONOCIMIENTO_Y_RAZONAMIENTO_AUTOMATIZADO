%consult('/Users/mr.blissfulgrin/Documents/UAH_2018_2019/RAZONAMIENTO/LAB/PECL1/exe.pl').
:-consult('./knoledge_base.pl').

%Inicio del programa
akinator:-
    caracteristicas(ListaPreguntas),length(ListaPreguntas,LongitudPreguntas),
    crearListaRespuestas(n,LongitudPreguntas,ListaRespuestas),lenguajes(ListaLenguajes),
    %tcp_socket(Socket),
    %tcp_connect(Socket, localhost:5008),
    %tcp_open_socket(Socket, InStream, OutStream),
    %set_input(InStream),
    %set_output(OutStream),
    nl,write('Akinator!!!'), nl,nl,
    gameLoop(ListaPreguntas,ListaRespuestas,ListaLenguajes,0),
    %close(InStream),
    %close(OutStream),
    %tcp_close_socket(Socket),
    nl,write('Game Over!!!'),nl,!.

%Bucle del juego
gameLoop([PrimeraPregunta|RestoPreguntas],ListaRespuestas,ListaLenguajes,Indice):-
    write('Su lenguaje '),write(PrimeraPregunta),write('?'),
    read(Answer),
    (Answer==e -> write('exit'),! ;
                 reemplazar(ListaRespuestas,Indice,Answer,NuevaListaRespuestas),
                 write(NuevaListaRespuestas),nl,
                 Indice1 is Indice+1,
                 validar(NuevaListaRespuestas,ListaLenguajes,[],NuevaListaLenguajes),
                 write(NuevaListaLenguajes),nl,
                 length(NuevaListaLenguajes,N),
                 (N=:=1 ->
                          write('Su lenguaje es '),[Solucion|_]=NuevaListaLenguajes,write(Solucion),!;
                          (N=:=0 ->
                                    write('No se ha podido encontrar su lenguaje'),!;
                                    gameLoop(RestoPreguntas,NuevaListaRespuestas,NuevaListaLenguajes,Indice1)))).

gameLoop(_,_,_,_):-write('No quedan preguntas').


%Comparar caracteristicas y quitar lenguaje de la lista general
validar(ListaRespuestas,[Lenguaje1|RestoLenguajes],FinalAnterior,Final):-
    lenguaje(Lenguaje1,ListaCaract),
    validarAux(ListaRespuestas,ListaCaract,Lenguaje1,FinalAnterior,Resultado),
    validar(ListaRespuestas,RestoLenguajes,Resultado,Final).

validar(_,_,FinalAnterior,FinalAnterior).

validarAux([Respuesta1|RestoRespuestas],[Caracteristica1|RestoCaracteristicas],Lenguaje1,FinalAnterior,Final):-
    ((Respuesta1==n;Caracteristica1==n)->
                      validarAux(RestoRespuestas,RestoCaracteristicas,Lenguaje1,FinalAnterior,Final);
                      (Respuesta1==Caracteristica1 ->
                                   validarAux(RestoRespuestas,RestoCaracteristicas,Lenguaje1,FinalAnterior,Final);
                                   validarAux([],[],FinalAnterior,Final))).

validarAux(_,_,Lenguaje1,FinalAnterior,[Lenguaje1|FinalAnterior]).
validarAux(_,_,FinalAnterior,FinalAnterior).

%Reemplazar valor de una lista en una cierta posici�n
reemplazar([_|Cola], 0, Valor, [Valor|Cola]).
reemplazar([Cabeza|Cola1], Indice, Valor, [Cabeza|Cola2]):-
    Indice > -1,
    NuevoIndice is Indice-1,
    reemplazar(Cola1, NuevoIndice, Valor, Cola2), !.
reemplazar(Lista, _, _, Lista).

%Construir lista de longitud N con valor X en sus posiciones
crearListaRespuestas(Valor, Longitud, ListaRespuestas)  :-
    length(ListaRespuestas, Longitud),
    maplist(=(Valor), ListaRespuestas).

%Funci�n que devuelve una lista con nombres de los lenguajes
lenguajes(Lenguajes):- lenguajes_aux([], Lenguajes).
lenguajes_aux(Lenguajes,Resultado):-
    lenguaje(NuevoLenguaje,_),
    not(member(NuevoLenguaje,Lenguajes)),
    lenguajes_aux([NuevoLenguaje|Lenguajes], Resultado), !.
lenguajes_aux(X,X).

%Funcione que obtiene una pregunta dado un indice
obtenerPregunta(Indice, Pregunta):-
    caracteristicas(Lista),
    nth1(Indice, Lista, Pregunta).
