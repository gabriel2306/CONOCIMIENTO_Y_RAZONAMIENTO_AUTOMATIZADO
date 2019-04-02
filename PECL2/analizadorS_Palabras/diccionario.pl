%Diccionario

determinante(det(X),Gen,Num)-->[X],{det(X,Gen,Num)}.
det(el,m,s).
det(la,f,s).
det(los,m,p).
det(las,f,p).

det(un,m,s).
det(una,f,s).
det(unos,m,p).
det(unas,f,p).

det(su,f,s).
det(su,m,s).
det(sus,m,p).
det(sus,f,p).

det(mi,m,s).
det(mi,f,s).
det(mis,m,p).
det(mis,f,p).

nombre(n(X),Gen,Num,Per)-->[X],{n(X,Gen,Num,Per)}.

n(hombre,m,s,t).
n(mujer,f,s,t).
n(hombres,m,p,t).
n(mujeres,f,p,t).

n(juan,m,s,t).
n(hector,m,s,t).
n(maria,f,s,t).
n(irene,f,s,t).

n(platano,m,s,t).
n(platanos,m,p,t).
n(manzana,f,s,t).
n(manzanas,f,p,t).

n(gato,m,s,t).
n(gatos,m,p,t).
n(zebra,f,s,t).
n(zebras,f,p,t).

n(raton,m,s,t).
n(ratones,m,p,t).
n(rata,f,s,t).
n(ratas,f,p,t).

n(alumno,m,s,t).
n(alumnos,m,p,t).
n(alumna,f,s,t).
n(alumnas,f,p,t).

n(colegio,m,s,t).
n(colegios,m,p,t).
n(universidad,f,s,t).
n(universidads,f,p,t).

n(tenedor,m,s,t).
n(tenedores,m,p,t).
n(cuchara,f,s,t).
n(cucharas,f,p,t).

n(cuchillo,m,s,t).
n(cuchillo,m,p,t).
n(sierra,f,s,t).
n(sierras,f,p,t).

n(practica,f,s,t).
n(practicas,f,p,t).
n(trabajo,m,s,t).
n(trabajos,m,p,t).

n(canario,m,s,t).
n(canarios,m,p,t).
n(paloma,f,s,t).
n(palomas,f,p,t).

n(vuelo,m,s,t).
n(vuelos,m,p,t).
n(travesia,f,s,t).
n(travesias,f,p,t).

n(madrid,f,s,t).
n(madrid,m,s,t).

n(reflejo,m,s,t).
n(reflejos,m,p,t).
n(velocidad,f,s,t).
n(velocidades,f,p,t).

n(esperanza,f,s,t).
n(esperanzas,f,p,t).
n(deseo,m,s,t).
n(deseos,m,s,t).

n(entusiasmo,m,s,t).
n(entusiasmos,m,p,t).
n(vida,f,s,t).
n(vidas,f,p,t).

n(nino,m,s,t).
n(ninos,m,p,t).
n(nina,f,s,t).
n(ninas,f,p,t).

n(lugar,m,s,t).
n(lugares,m,p,t).
n(zona,f,s,t).
n(zonas,f,p,t).

n(nacimiento,m,s,t).
n(nacimientos,m,p,t).
n(salida,f,s,t).
n(salidas,f,s,t).

n(profesor,m,s,t).
n(profesores,m,p,t).
n(profesora,f,s,t).
n(profesoras,f,p,t).

n(procesador,m,s,t).
n(procesadores,m,p,t).
n(procesadora,f,s,t).
n(procesadoras,f,p,t).

n(texto,m,s,t).
n(textos,m,p,t).
n(documento,m,s,t).
n(documentos,m,p,t).
n(redaccion,f,s,t).
n(redacciones,f,p,t).

n(utensilio,m,s,t).
n(utensilios,m,p,t).
n(herramienta,f,s,t).
n(herramientas,f,p,t).

n(escribir,f,s,t).
n(escribir,m,s,t).

n(tomate,m,s,t).
n(tomates,m,s,t).
n(patata,f,s,t).
n(patatas,f,p,t).

n(cafe,m,s,t).
n(cafes,m,p,t).
n(agua,f,s,t).
n(aguas,f,p,t).
n(cerveza,f,s,t).
n(cervezas,f,p,t).

n(mesa,f,s,t).
n(pantalon,m,s,t).
n(corbata,f,s,t).

n(manzano,m,s,t).
n(manzanos,m,p,t).
n(palmera,f,s,t).
n(palmeras,f,p,t).

n(taburete,m,s,t).
n(taburetes,m,p,t).
n(mesa,f,s,t).
n(mesas,f,p,t).

n(pantalon,m,s,t).
n(pantalones,m,p,t).
n(corbata,f,s,t).
n(corbatas,f,p,t).

verbo(v(X),Num,Cop,Per)-->[X],{v(X,Num,Cop,Per)}.
v(ama,s,n,t).
v(aman,p,n,t).

v(come,s,n,t).
v(comen,p,n,t).

v(estudia,s,n,t).
v(estudian,p,n,t).

v(era,s,c,t).
v(eran,p,c,t).

v(cazo,s,n,t).
v(cazaron,p,n,t).

v(hace,s,n,t).
v(hacen,p,n,t).

v(canta,s,n,t).
v(cantan,p,n,t).

v(alzo,s,n,t).
v(alzaron,p,n,t).

v(esta,s,c,t).
v(estan,p,c,t).

v(es,s,c,t).
v(son,p,c,t).
v(somos,p,c,pr).

v(habla,s,n,t).
v(hablan,p,n,t).

v(depende,s,n,t).
v(dependen,p,n,t).

v(vimos,p,n,pr).
v(vi,s,n,t).
v(vieron,p,n,t).

v(sirve,s,n,t).
v(sirven,p,n,t).

v(recoge,s,n,t).
v(recogen,p,n,t).

v(toma,s,n,t).
v(toman,p,n,t).

v(compre,s,n,pr).
v(compraron,p,n,t).

v(bebe,s,n,t).
v(beben,p,n,t).

v(salta,s,n,t).
v(saltan,p,n,t).

v(sonrie,s,n,t).
v(sonrien,p,n,t).

adjetivo(a(X),Gen,Num)-->[X],{a(X,Gen,Num)}.
a(roja,f,s).
a(rojo,m,s).
a(rojas,f,p).
a(rojos,m,p).

a(negro,m,s).
a(negra,f,s).
a(negros,m,p).
a(negras,f,p).

a(grande,m,s).
a(grande,f,s).
a(grandes,m,p).
a(grandes,f,p).

a(gris,m,s).
a(gris,f,s).
a(grises,m,p).
a(grises,f,p).

a(pequeno,m,s).
a(pequena,f,s).
a(pequenos,m,p).
a(pequenas,f,p).

a(blanco,m,s).
a(blanca,f,s).
a(blancas,f,p).
a(blancos,m,p).

a(lento,m,s).
a(lenta,f,s).
a(lentos,m,p).
a(lentas,f,p).

a(delicado,m,s).
a(delicada,f,s).
a(delicados,m,p).
a(delicadas,f,p).

a(potente,m,s).
a(potente,f,s).
a(potentes,m,p).
a(potentes,f,p).

a(moreno,m,s).
a(morenos,m,p).
a(morena,f,s).
a(morenas,f,p).

a(alta,f,s).
a(alto,m,s).
a(altas,f,p).
a(altos,m,p).

a(frita,f,s).
a(frito,m,s).
a(fritos,m,p).
a(fritas,f,p).

a(alegre,f,s).
a(alegre,m,s).
a(alegres,f,p).
a(alegres,m,p).


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

pronombre(pn(X),Gen,Num,Per)-->[X],{pn(X,Gen,Num,Per)}.
pn(ella,f,s,t).
pn(el,m,s,t).
pn(ellas,f,p,t).
pn(ellos,m,p,t).

adverbio(ad(X))-->[X],{ad(X)}.
ad(muy).
ad(lejos).
ad(claramente).
ad(solamente).
ad(bastante).