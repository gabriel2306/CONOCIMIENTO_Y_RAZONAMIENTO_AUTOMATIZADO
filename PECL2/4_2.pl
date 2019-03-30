%consult('/Users/mr.blissfulgrin/Documents/UAH_2018_2019/RAZONAMIENTO/LAB/PECL2/4.pl').
:-consult(draw).
:-consult(oraciones).
:-consult(generos).
:-consult(graphviz).

oracion(Input):-
    oracion(Output,Input,[]),
    with_output_to(atom(Atom),write(Output)),
    atom_string(Atom,String),
    split_string(String,"()","( ) ",List),
    write(List),nl,
    write(Output), draw(Output),validate(Input,[],X),
    write(X),!.

%Reglasgramaticales
oracion(Output,Input,[]):- oracion_simple(Output,Input,[]).
oracion(Output,Input,[]):- oracion_ccordinada(Output,Input,[]).
oracion_simple(o(GV))-->g_verbal(GV).
oracion_simple(o(GN,GV))-->g_nominal(GN),g_verbal(GV).
oracion_simple(o(GV,GN))-->g_verbal(GV),g_nominal(GN).

oracion_ccordinada(o(OS1,C,OS2))-->oracion_simple(OS1),conjuncion(C),oracion_simple(OS2).
oracion_ccordinada(o(OS1,C1,OS2,C2,OS3))-->oracion_simple(OS1),conjuncion(C1),oracion_simple(OS2),conjuncion(C2),oracion_simple(OS3).

oracion_subordinada(o(GN,GV))-->g_nominal_sub(GN),g_verbal(GV).

g_nom(gn(N))-->nombre(N).
g_nom(gn(PN))-->pronombre(PN).
g_nom(gn(N,A))-->nombre(N),adjetivo(A).
g_nom(gn(N1,N2))-->nombre(N1),nombre(N2).

g_nom(gn(A,N))-->adjetivo(A),nombre(N).
g_nom(gn(D,A,N))-->determinante(D),adjetivo(A),nombre(N).
g_nom(gn(D,N))-->determinante(D),nombre(N).
g_nom(gn(D,N,A))-->determinante(D),nombre(N),adjetivo(A).

g_nominal(GN)-->g_nom(GN).
g_nominal(gn(GN1,C,GN2))-->g_nom(GN1),conjuncion(C),g_nom(GN2).
%g_nominal(gn(GN1,C,GN2,A))-->g_nom(GN1),conjuncion(C),g_nom(GN2),adjetivo(A).
g_nominal(gn(GN1,GP))-->g_nom(GN1),g_preposicional(GP).
g_nominal(gn(GN1,GA))-->g_nom(GN1),g_adjetival(GA).
g_nominal(gn(GN1,OR))-->g_nom(GN1),o_relativo(OR).
g_nominal(gn(GN1,GA,OR))-->g_nom(GN1),g_adjetival(GA),o_relativo(OR).

o_relativo(or(PR,OS))-->p_relativo(PR),oracion_simple(OS).

g_verbal(gv(V))-->verbo(V).
g_verbal(gv(V,GN))-->verbo(V),g_nominal(GN).
g_verbal(gv(V,GN,GP))-->verbo(V),g_nominal(GN),g_preposicional(GP).
g_verbal(gv(V,GN,GA))-->verbo(V),g_nominal(GN),g_adjetival(GA).
g_verbal(gv(V,A))-->verbo(V),adjetivo(A).
g_verbal(gv(V,GP))-->verbo(V),g_preposicional(GP).
g_verbal(gv(V,GA))-->verbo(V),g_adverbial(GA).
g_verbal(gv(V,GA,GN))-->verbo(V),g_adverbial(GA),g_nominal(GN).
g_verbal(gv(V,GAD))-->verbo(V),g_adjetival(GAD).

g_preposicional(gp(P,GN))-->preposicion(P),g_nominal(GN).

g_adverbial(gad(AD1,AD2,GP))-->adverbio(AD1),adverbio(AD2),g_preposicional(GP).
g_adverbial(gad(AD1,AD2))-->adverbio(AD1),adverbio(AD2).
g_adverbial(gad(ADV))-->adverbio(ADV).

g_adjetival(gaj(AD,GP))-->adjetivo(AD),g_preposicional(GP).
g_adjetival(gaj(ADV,ADJ))-->adverbio(ADV),adjetivo(ADJ).

%Diccionario
determinante(det(X))-->[X],{det(X)}.
det(el,m,s).
det(la,f,s).
det(los,m,p).
det(las,f,p).
det(un,m,s).
det(una,f,s).
det(unos,m,p).
det(unas,f,p).
det(su,a,s).
det(sus,a,p).
det(mi,a,s).
det(mis,a,p).

nombre(n(X))-->[X],{n(X)}.
n(hombre,m,s).
n(mujer,f,s).
n(juan,m,s).
n(maria,f,s).
n(irene,f,s).
n(manzana,f,s).
n(manzanas,f,p).
n(gato,m,s).
n(raton,m,s).
n(alumno,m,s).
n(universidad,f,s).
n(tenedor,m,s).
n(cuchillo,m,s).
n(practica,f,s).
n(canario,m,s).
n(paloma,f,s).
n(vuelo,m,s).
n(madrid,a,s).
n(reflejo,m,s).
n(esperanza,f,s).
n(vida,f,s).
n(nino,m,s).
n(lugar,m,s).
n(nacimiento,m,s).
n(profesor,m,s).
n(profesora,f,s).
n(procesador,m,s).
n(texto,m,s).
n(herramienta,f,s).
n(escribir,a,s).
n(documento,m,s).
n(cafe,m,s).
n(mesa,f,s).
n(pantalon,m,s).
n(corbata,f,s).
n(hector,m,s).
n(patata,f,s).
n(cerveza,f,s).
n(raton,m,s).

n(hombres,m,p).
n(mujeres,f,p).
n(manzano,m,s).
n(manzanos,m,p).
n(gatos,m,p).
n(gata,f,s).
n(tenedores,m,p).
n(cuchillos,m,p).
n(practicas).
n(canarios,m,p).
n(palomas,f,p).
n(vuelos,m,p).
n(reflejos,m,p).
n(esperanzas,f,p).
n(vidas,f,p).
n(ninos,m,p).
n(lugares,m,p).
n(profesores,m,p).
n(profesoras,f,p).
n(universidades,f,p).
n(procesadores,m,p).
n(textos,m,p).
n(herramientas,f,p).
n(documentos,m,p).
n(cafes,m,p).
n(mesas,f,p).
n(pantalones,m,p).
n(corbatas,f,p).
n(patatas,f,p).
n(cervezas,f,p).
n(ratones,m,p).

verbo(v(X))-->[X],{v(X)}.
v(ama,s).
v(come,s).
v(estudia,s).
v(era,s).
v(cazo,s).
v(hace,s).
v(canta,s).
v(alzo,s).
v(esta,s).
v(es,s).
v(habla,s).
v(depende,s).
v(vi,s).
v(sirve,s).
v(recoge,s).
v(toma,s).
v(compre,s).
v(bebe,s).
v(salta,s).
v(sonrie,s).

v(saltan,p).
v(comen,p).
v(hacen,p).
v(cantan,p).
v(alzaron,p).
v(estan,p).
v(son,p).
v(hablan,p).
v(dependen,p).
v(vimos,p).
v(sirven,p).
v(recogen,p).
v(toman,p).
v(compraron,p).
v(beben,p).

adjetivo(a(X))-->[X],{a(X)}.
a(roja,f,s).
a(rojo,m,s).
a(negro,m,s).
a(negra,f,s).
a(grande,a,s).
a(gris,a,s).
a(pequeno,m,s).
a(pequena,f,s).
a(blanca,f,s).
a(lento,m,s).
a(lenta,f,s).
a(delicado,m,s).
a(delicada,f,s).
a(potente,f,s).
a(moreno,m,s).
a(alta,f,s).
a(alto,m,s).
a(frita,f,s).
a(frito,m,s).
a(alegre,a,s).

a(grandes,a,p).
a(rojas,f,p).
a(rojos,m,p).
a(blancas,f,p).
a(blancos,m,p).
a(lentos,m,p).
a(delicados,m,p).
a(delicadas,f,p).
a(potentes,a,p).
a(morenos,m,p).
a(morenas,f,p).
a(altas,f,p).
a(altos,m,p).
a(negros,m,p).
a(negras,f,p).
a(fritas,f,p).

preposicion(p(X))-->[X],{p(X)}.
p(con).
p(de).
p(en).
p(para).
p(a).

conjuncion(c(X))-->[X],{c(X)}.
c(y).
c(mientras).
c(pero).

p_relativo(pr(X))-->[X],{pr(X)}.
pr(que).

pronombre(pn(X))-->[X],{pn(X)}.
pn(ella,f,s).
pn(el,m,s).
pn(ellas,f,p).
pn(ellos,m,p).

adverbio(ad(X))-->[X],{ad(X)}.
ad(muy).
ad(lejos).
ad(claramente).
ad(solamente).
ad(bastante).