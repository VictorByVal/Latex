// Configuración inicial del documento

#show title : set align(center)

#set document(
  title: [Matemáticas Actuariales], 
  author: "Victor Gabriel Vázquez Montes"
)

#set heading(numbering: "1.")
#set par(justify:true)

// Algunas definiciones propias 

// Creación de callouts personalizados (Para notas, teoremas y demás)

#let callout(title: "Información", color: rgb("#2196F3"), body) = {
  block(
    width: 100%,
    fill: color.lighten(95%),
    stroke: 0.5pt + color.lighten(50%),
    radius: 4pt,
    clip: true,
  )[
    // Encabezado
    #block(
      fill: color.lighten(80%),
      width: 100%,
      inset: (x: 0.8em, y: 0.5em),
      grid(
        columns: (auto, 1fr),
        gutter: 0.6em,
        [*#title*]
      )
    )
    // Contenido
    #block(inset: 0.8em, body)
  ]
}

#title()

#pagebreak()

#outline(title: [Tabla de contenidos])

#pagebreak()

= Matemáticas Actuariales

#callout(title: "Recordatorio para Examen", color: yellow)[
  La reserva matemática $""_t V_x$ representa la obligación neta de la aseguradora en el tiempo $t$.
]

== Notación probabilística

=== Glosario

== Distribución de la vida futura

== Notación Actuarial

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

== Anualidades Contingentes

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

#callout(title: "Ejemplo", color:purple)[Cuando alguna aseguradora necesite distinguir entre los mótivos por los que se está dando de baja a una u otra persona, ya sea para aplicar exclusiones o beneficios adicionales; ej. Muerte (tanto natural como accidental), invalidez, vejez, etc.] 

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

=== Tablas de Mortalidad de Decrementos Múltiples

