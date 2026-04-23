// Configuración inicial del documento

#show title : set align(center)

#set document(
  title: [Matemáticas Actuariales], 
  author: "Victor Gabriel Vázquez Montes"
)

#set list(indent: .80cm)

#set text(12pt)

#set heading(numbering: "1.")
#set par(justify:true, spacing: 1em, leading: 1em)

#set quote(block:true)

#import "@preview/calloutly:1.0.0" : callout-style, callout, note, tip, important, warning, caution
#show: callout-style.with(style: "minimal")

#title()

#pagebreak()

#outline(title: [Tabla de contenidos])

#pagebreak()

= Matemáticas Actuariales

Las Matemáticas Actuariales son una rama especializada de las matemáticas aplicadas que se utilizan principalmente en la gestión de riesgos financieros en sectores como los seguros, las pensiones y las inversiones. Gracias a ellas, los actuarios pueden modelar escenarios futuros, calcular probabilidades de eventos y diseñar productos financieros que minimicen riesgos e incrementen rentabilidad.

En este primer curso o acercamiento a Matemáticas Actuariales se hablará acerca de los fundamentos de la misma, principalmente comprendiendo la teoría de la que derivan, su notación propia, el concepto y algunas aplicaciones de tablas de mortalidad, hasta llegar a los seguros y anualidades. 

== Notación probabilística

=== Glosario

== Distribución de la vida futura

== Notación Actuarial

Es diferente la notación que se emplea en la actuaría a aquella con la que los padres de la probabilidad empezaron a explorar las funciones de supervivencia y mortalidad. 

En actuaría existen notaciones equivalentes a las funciones definidas con anterioridad: 



=== Glosario

== Fuerza de Mortalidad

== Leyes de probabilidad

=== DeMoivre

=== Gompertz

=== Makeham 

=== Límites de tiempo 

== Tablas de Mortalidad

== Tablas de Mortalidad Selecta

== Seguros

=== Tipos de seguros

=== Glosario y Notación

== Aualidades Contingentes

== Edades fraccionarias de mortalidad

= Matemáticas Actuariales II

== Reservas

== Vidas Múltiples

== Vida Conjunta

== Ultimo Sobreviviente

== Beneficios de vidas conjuntas

== Beneficios de último sobreviviente

== Beneficios de temporales

== Valor de rescate

== Anualidades reversionarias

== Decrementos Múltiples 

Es un tipo de modelo en el que se tienen distintas causas por las que un individuo sale de un grupo.

#callout(title: "Ejemplo", color:purple, icon:"🧮")[Cuando alguna aseguradora necesite distinguir entre los mótivos por los que se está dando de baja a una u otra persona, ya sea para aplicar exclusiones o beneficios adicionales; ej. Muerte (tanto natural como accidental), invalidez, vejez, etc.] 

Las causas son denotadas bajo este modelo con variables aleatorias $j$, por lo que ahora en este modelo tendremos ya no solo la variable aleatoria $T(x)$, sino que tendremos dos $T(x)$ y $J$. Por ende bajo este modelo la forma de expresar el tiempo futuro de vida de un modelo de decrementos múltiples en donde $(x)$ está sujeto a todas las posibles causas de salida $tau$ se expresa como: 

$ T_((x)) ^((tau)) $

Para esto $j = 1, 2, dots, m$ son las causas de salida (Total de $m$). Por lo que, De acuerdo a lo anterior y a la *Teoría de la probabilidad*, podemos afirmar que tenemos una distribución bivariada con por lo menos una de las variables aleatorias discretas $J$. 

- $P(T_((x))^((tau)) <= t)$: Probabilidad de que $(x)$ salga o termine antes del tiempo $t$ por cualquier causa. 
- $P(J=j) = f_J(j)$: Probabilidad de que $(x)$ salga o termine por causa $j$ en cualquier momento. 

Al integrar, obtenemos: 

$ P(J =j) = integral_0^infinity f_(T_((x))^((tau)), J) (t,j)d t  \ = sum_(j=1)^(m) f_(T_((x))^((tau)), J) (t,j) $

Sus respectivas funciones de densidad son: 

- Conjunta: $f_(T_((x))^((tau)), J) = ""_t p_x^((tau)) #v(1pt) mu_(x+t)^((tau))$
- Marginal de $t$: $f_(T_((x))^((tau))) (t) = ""_t p_x^((tau)) #v(1pt) mu_(x+t)^((tau))$
- Marginal de $j$: $P(J=j) = ""_infinity q_x^((j))$

La condicional de $t$ dado $j$ resulta en la expresión: 

$ f_(T(x)|J)(t|j) = (f_(T(x), J)(t,j)) / P(J=j) = (""_t p_x^((j)) #v(.2pt) mu_(x+t)^((j))) / q_x^((j)) $

La condicional de $j$ dado $t$ resulta en la siguiente expresión:

$ f_(J|T(x))(j|t) = (f_(T(x), J)(t,j)) / (f_(T(x))(t)) = (""_t p_x^((j)) #h(.1cm) mu_(x+t)^((j))) / (""_t p_x^ #h(.3cm) mu_(x+t)) = mu_(x+t)^((j)) / mu_(x+t) $

*Ejemplo*

$ f_(T(x) ^ ((tau)), J) (t,j) = j e ^(-6t) = cases(e ^(-6t) " para " j = 1, 
2 e ^ (-6t) "para"  j = 2, 
3 e ^(-6t) "para" j = 3) $

$ ""_(4|2) q_x ^ ((2)) = ""_4 p_x ^ ((tau)) dot ""_2 q_(x+4) ^ ((2)) $

$ ""_(4|2) q_x ^ ((2)) = integral_4 ^6 f_(T(x) ^ (tau), J) (t, 2) d t $

$ f_(T(x)^(tau), J) (t, j) = ""_t p_x ^(tau) #h(.2cm) mu_(x+t) ^((j)) = j e^(-6t) $

$ 2 integral_4 ^6 d t = 2 [e ^(6t)/6]^6_4 $

$ = - 1/3 (e ^(-36) - e ^(-24)) = (e ^(-24)- e ^(-36))/3 $

$ approx 0.00002048 $

=== Tablas de Mortalidad de Decrementos Múltiples

Consideremos un grupo de personas de edad $(x)$ que están sujetas a $(m)$ posibles, bajo ese modelo se pueden definir columnas con las siguientes variables: 

- $ell_x^((tau))$: Donde se debe interpretar a $ell$ como el número de personas y a $tau$ como todas las posibles causas por las que esas personas podrían salir del grupo. 
  - $(x)$ mantiene su valor recurrente a lo largo de todo el curso de Matemáticas Actuariales. 
  - Por ende una interpretación más clara de lo que significa esto es _"La cantidad personas vivas a edad $x$ que tenemos en el grupo, dadas $tau$ posibles causas de salida"_. 
- $d_x ^((tau))$: Esto contempla la cantidad de personas que dejan de estar activas por cualquier causa entre edad $x$ y $x+1$, dadas las $tau$ causas de salida.  
  - En cierto sentido se podría decir que $d_x$ mantiene su significado original de las tablas de mortalidad de los modelos más simples. 
- $d_x ^((j))$: Esto contempla el número de personas que dejan de estar activos por "$j$" causa determinada, con causas $j = 1, dots, m$. 

Ahora, de los modelos más simples de las tablas de mortalidad, debemos de recordar algunos principios para la construcción de los modelos de decrementos múltiples, tal es el caso de las distintas formas en las que se puede obtener la probabilidad de muerte: 

$ q_x = d_x / ell_x = 1 - p_x = 1 - (ell_(x+1)) / ell_x = (ell_x - ell_(x+1))/ell_x $

Solo que ahora se deben contemplar algunas características adicionales: 

- $p_x = (ell_(x+1)) / ell_x$, se mantiene, solo que ahora tenemos $ell_x ^((tau)), d_x^((tau))$ y $d_x^((j))$. 
- $q_x ^((tau)) = d_x ^((tau)) / ell_x ^((tau))$: Bajo este modelo significa _"La probabilidad de que alguna persona salga del grupo en el siguiente año por cualquier causa"_. 
- $q_x^((j))$: Que significa _"La probabilidad de que alguna persona salga del grupo en el siguiente año por la causa específica $j$"_, siendo $j = 1, dots , m$. 
  - En este modelo cada $(j)$ puede ser especificada en una columna diferente. 
  - #text(fill: red)[Se debe recordar que todas las personas están sujetas a $tau$ (Todas las posibles causas de salida).] 
- $d_x ^((tau)) = sum_(j=1)^m d x^(i)$: Lo que quiere decir que un individuo solo puede salir por una de todas las posibles causas. 
  - *En otras palabras*: #text(fill: red)[El total de personas en un año entre $x$ y $x+1$ es la suma de todos los decrementos de las "$m$" razones de salida.]
    - Usamos mucho esta propiedad para la construcción de las tablas de mortalidad decrecientes, puesto que al sumar todas las $d_x ^((j))$ nos permite calcular la $d_x ^((tau))$. 

Por lo tanto, para obtener la probabilidad de que $(x)$ salga por cualquier causa entre $x+n$ y $x+n+1$ efectuaremos: 

$ ""_(n|) q_x ^((tau)) = ""_n p_x ^((tau)) dot q_(x+n)^((tau)) = ell_(x+n)^((tau)) / ell_x ^((tau)) dot d_(x+n) ^((tau)) / ell_(x+n) ^((tau)) = d_(x+n)^((tau)) / ell_x ^((tau)) $ 

Mientras que para segmentar esa probabilidad por causa la formula se resume a: 

$ ""_(n|) q_x ^((j)) = ""_n p_x ^((tau)) dot q_(x+n)^((j)) = ell_(x+n)^((tau))/ ell_x ^((tau)) dot d_(x+n)^((j)) / ell_(x+n)^((tau)) = d_(x+n)^((j)) / ell_x^((tau)) $

#v(1cm)

#set table(
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  align: (x, y) => (
    if x > 0 { center }
    else { left }
  )
)

#figure(caption: [Ejemplo básico de una tabla de mortalidad de Decrementos Múltiples])[
  #table(columns: (auto, auto, auto, auto, auto, auto, auto), table.header(
    [Año $k$], [0], [1], [2], [3], [4], [5]
  ),[$q_(x+k)^((1))$], [0.003], [0.004], [0.005], [0.006], [0.007], [0.008],
[$q_(x+k)^((2))$], [0.140], [0.120], [0.100], [0.080], [0.060], [0.040],
[$q_(x+k)^((tau))$], [0.145], [0.124], [0.105], [0.086], [0.067], [0.048],
  )
]

- Debes notar además en la tabla que $tau$ resulta en la suma de cada una de las $j$ subsecuentes #footnote[En dado caso de desear más información o un ejemplo más conciso, consultar la tabla elaborada en clase en excel]