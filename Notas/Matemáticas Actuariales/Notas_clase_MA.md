::: titlepage
Universidad Cristóbal Colón
:::

# Matemáticas Actuariales I

## Notación probabilística

"Future Lifetime" = Vida futura

::: center
:::

Donde:

- ($x$) Sera la edad de una persona, por lo que se puede afirmar que
  $x \geq 0$

- Se debe tomar en cuenta que la muerte puede ocurrir en cualquier
  momento mayor a $x$ (No puede ocurrir antes de $x$ porque se supone
  que la persona ya llegó a esa edad).

### Glosario

- $Fx$: Representa la probabilidad de que ($x$) no sobreviva mas de
  $x + t$ años.

- $Sx$: Es la probabilidad de que una persona sobreviva mas de $x+t$
  anos.

- $T_x$\> Es la cantidad de tiempo hasta que una persona de $x$ años
  muera.

- $T_0$: Vida futura de un recien nacido considerando que el bebe pudo
  morir antes de llegar a la edad $x$.

- ### Distribución de la vida futura

  ::: flushright
  $Fx$ para $T_x$
  :::

  Siendo así, entonces la función de supervivencia es la probabilidad
  inversa de que la persona fallezca en dicho periodo, por lo que se
  puede concluir que:

  $$Sx = 1 - Fx = Pr[Tx < t]$$

## Notacion Actuarial

Es diferente la notacion que se emplea en la actuaria a aquella con la
que los padres de la probabilidad empezaron a explorar las funciones de
supervivencia y mortalidad.

En actuaria existen notaciones equivalentes a las funciones definidas
con anterioridad:

$$\px[t]{x} = Pr[T_x > t] = Sx(t)$$

$$\qx[t]{x} = Pr[T_x < t] = Fx(t)$$

**Propiedades**

1.  $\px[t]{x} + \qx[t]{x} = 1$ (O estas muerto o estas vivo).

2.  $\px[t+u]{x} = \px[t]{x} \cdot \px[u]{x+t}$. Esta propiedad solo es
    válida para la función de supervivencia y aunque si se puede aplicar
    a la de fallecimiento, requiere de emplear despejes y ecuaciones
    algebráicas para obtener el resultado deseado.

### Glosario

- $\px[t]{x}$: Es la probabilidad de que una persona sobreviva durante
  $t$ años teniendo $x$ años.

- $\qx[t]{x}$: Es la probabilidad de que una persona fallezca dentro de
  los $t$ años siguientes teniendo $x$ años.

## Fuerza de Mortalidad

Es la probabilidad instantanea de fallecer en el proximo instante,
condicionada a haber sobrevivido hasta ese momento.

- Se mide en unidades de "por año" (Si el tiempo esta en años). Por
  ejemplo: Si $\mu_{70} = 0.05$ significa que una persona de 70 años
  cumplidos tiene una probabilidad aproximada del 5% de morir durante el
  proximo año si ese valor se mantiene constante durante en ese
  intervalo muy corto.

- Simplificacion: Mide que tan "intensa" es la mortalidad en ese
  instante exacto de edad.

## Leyes de probabilidad

### De Moivre

Especifica que la muerte se distribuye de forma uniforme en $[0, w]$,
Donde $w$ es la edad limite de una poblacion.

$$\mu_x = \frac{1}{w-x}, \hspace{1cm} Sx = 1 - \frac{x}{w}, \hspace{1cm} 0 < x \leq w$$

### Gompertz

Asumio que $\ln{|\mu_x|}$ en una recta podía ser expresado como:

$$\ln{|\mu_x|} = \alpha + \beta x$$

Donde si se desea conocer el valor de $\mu_x$ aplicamos la constante de
euler\>

### Makeham

Es la misma que **Gompertz** solo que agregando el parametro adicional
$A$.

La interpretación es que $BC^x$ representa la muerte como deterioración,
la cual incrementa exponencialmente con $A$ que representa una
constante.

## Limites de tiempo

Nos sirve para sacar el promedio de años que vivirá una persona durante
los siguientes $n$ años.

$n$ - year composite expectation of life: $\min(Tx, n)$

$$\eringx{\endowxn} = E[\min(Tx, n)] = \int_{0}^{n} \px[t]{x} dt \hspace{1cm}\text{\color{red} (Para el caso contínuo)}$$

$$e_{\endowxn} = \sum_{k=1}^{n} \px[k]{x} \hspace{1cm} \text{\color{red} (Para el caso discreto)}$$

::: center
*"En vez de decirnos la probabilidad de que una persona muera, nos dice
cuando va a morir"*
:::

**Relación entre la continua y la discreta**

$$\eringx{x} = \frac{1}{2} + e_x$$

## Tablas de mortalidad

Una tabla de mortalidad especifica el número de vidas a una cierta edad
$x$.

El número de vidas a edad $x_0$ es conocido como **Radix** o "Población
inicial"

### Tablas de mortalidad selecta

#### Curtate Future Lifetime

Significa **Tiempo entero de vida**

Es una variable entera/discreta donde $k_x = k$

*"Intervalo de tiempo de muerte"*

$k_x = k$ significa que la muerte de una persona de edad $x$ estará
dentro del k-enésimo intervalo $(k-1, k]$

$$k_x = \lfloor T_x \rfloor \hspace{1cm} \text{\color{red} Valor truncado de $x$}$$

## Seguros

### Tipos de seguros

#### Vitalicio / Vida entera (Whole life)

Lo que hace este tipo de seguro es asumir que se pagará \$1 al momento
de la muerte.

Por lo tanto, lo que se hace es traer el valor presente de \$ 1 pagadero
al momento de la muerte.

Para ello usaremos una $T_x$ continua

$$Z = V^{T_x} = e^{-\delta T_x}$$

Donde:

- $\delta$: Es la fuerza de interés.

- $T_x$: Es el tiempo que debe regresar el \$ 1 al presente

Por lo tanto, se puede decir que:

- $E[T_x]$: Es el valor esperado de cuando ocurrirá la muerte.

- $E[Z]$: Es el valor esperado de cuando esperamos pagar la suma
  asegurada.

$$E[Z] = E[e^{-\delta T_x}]$$

::: center
:::

Ilustrado el concepto, entonces tenemos que explicar que:

- $x$: La edad a la que una persona contrata el seguro.

- $x+s$: Llega con vida

- $\mu_{x+s}$: Muere

$$\Ax*{x} = E[Z] = E[e^{-\delta T_x}] = \int_{0}^{\infty} e^{-\delta t} \cdot \px[t]{x} \cdot \mu_{x+t} dt$$

$\Ax*{x}$ es entonces el valor presente actuarial (VPA) de un beneficio
(Suma asegurada) para una persona en edad $x$ pagadero al momento de la
muerte.

Donde la suma asegurada es igual a $S$ por lo tanto
$S \rightarrow E[S \cdot Z] = S \cdot \Ax*{x}$

Si tenemos fuerza de mortalidad constante, entonces:

$$E[Z] = \int_{0}^{\infty} e^{-\delta t} \cdot \px[t]{x} \cdot \mu_{x+t} dt \\ $$

$$\text{Se debe recordar que...} \hspace{0.5cm} \underbrace{\px[t]{x} = e^{\int_{0}^{y} \mu x dx}}_{\color{red}Continua}$$

$$\text{Por lo que, dado que $\mu_x$ es constante, entonces tenemos...} \hspace{0.5cm} \px[t]{x} = e^{-\mu t}$$

De donde obtenemos que:

$$\Ax*{x} = \int_{0}^{\infty} e^{-\delta t} \cdot e^{-\mu t} \cdot \mu dt$$

$$\mu \int_{0}^{\infty} e^{-\delta t - \mu t} dt = \mu \cdot e^{(\delta + \mu) |_{0}^{\infty}} \cdot \frac{1}{-(\mu + \delta)}$$

$$-\frac{\mu}{\mu + \delta} e^{- \infty} + \frac{\mu}{\mu + \delta} e^{-0} = \boxed{\color{red} \frac{\mu}{\mu + \delta}}$$

#### Seguro Temporal (Term Insurance)

#### Seguro dotal puro (Pure Endowment)

Es el tipo de seguro que se paga si y solo si el asegurado llega con
vida a los $n$ años.

$$Z = 
    \begin{cases}
        0 & \text{Con probabilidad $\qx[n]{x}$} \\
        V^n = e^{-\delta n} & \text{Con probabilidad $\px[n]{x}$} 
    \end{cases}$$

Por lo tanto su notación es comprendida de la siguiente manera:

$$\Ax*{\pureendowxn} = \Ex[n]{x}$$

$$E[Z] = \Ax*{\pureendowxn} = v^n \cdot \px[n]{x} = e^{-\delta n} \cdot \px[n]{x}$$

Donde, si $\px[n]{x}$ tiene una mortalidad constante (Fuerza de
mortalidad constante):

$$\Ax*{\pureendowxn} = e^{-\delta n} \cdot e^{-\mu n} = e^{-n(\delta + \mu)}$$

#### Seguro dotal mixto (Endowment)

$$Z = 
    \begin{cases}
        v^{T_x} = e^{-\delta T_x} & T_x < n \rightarrow \text{Si muere} \\
        
        v^n = e^{-\delta n} & T_x \geq n \rightarrow \text{Si vive}
    \end{cases}$$

$$Z = V^{\min(T_x, n)} = e^{-\delta \min(T_x, n)}$$

Por lo que:

$$\Ax*{\endowxn} = \Ax*{\termxn} + \Ax{\pureendowxn}  = \left( \int_{0}^{n} e^{-\delta t} \cdot \px[t]{x} \cdot \mu_{x+t} \delta t\right) + \left( V_{t}^{n} \px{x} \right)$$

El seguro dotal mixto resulta en una combinación entre un seguro
temporal y un seguro dotal puro, debido a que paga tanto si la persona
sobrevive como si la persona muere.

### Glosario y Notación

$\Ax{x}$: Valor presente actuarial (VPA) o en inglés (NPV) de una unidad
monetaria pagadera al final del año de fallecimiento de una persona de
edad $x$ (Whole life insurance).\
$\Ax{\termxn}$: Denota el valor presente actuarial de un seguro temporal
(n-year term insurance).

$\Ax{x:\angln}$: Denota el valor presente actuarial de un seguro dotal
mixto (n-year endowment insurance)

$\Ax{\pureendowxn}$: Denota el valor presente actuarial (VPA) de un
seguro dotal puro (n-year pure endowment)

$\Ex[n]{x}$: Factor de descuento actuarial (The pure endowment present
value factor)

$\Ax{x}[(m)]$: Denota el valor presente actuarial para un seguro en el
que el pago por la muerte se efectúa al final del m-ésimo periodo del
año en el que ocurre la muerte.

- $(m)$: Es la frecuencia de pagos (el seguro se paga en fracciones del
  año).

- Es un seguro de vida entera (cubre toda la vida de la persona).

- Donde $(m) > 0$ por lo que: $m = 2$ Semestral cada 6 meses = Dos veces
  al año \"semi-annual\". $m = 4$ Trimestral cada 3 meses = 4 veces al
  año \"quarterly\". $m = 12$ Mensual cada mes, 12 veces al año
  \"monthly\". $m = 6$ bimestral cada 2 meses = 6 veces al año. La lista
  puede continuar dependiendo cuantas veces y que tan pagadero se quiera
  hacer el seguro.

Como comentario,

## Anualidades contingentes

Anualidad contingente: Serie de pagos al final de un periodo
condicionada a la vida de una persona

- Puede ser empleado para seguros o pensiones que empiezan a partir de
  cierto periodo y terminan hasta que el pensionado o asegurado muere.

- Incluso podría llegar a ser aplicado para alguna segubeca o seguros
  similares.

## Edades fraccionarias de mortalidad

**UDD**: Uniform Distribution of death.

**Se asume una fuerza constante de mortalidad**

# Matemáticas Actuariales II

## Reservas

La reserva matemática de una póliza en vigor, al momento de valuación se
determinará con base en la diferencia entre el VPA de obligaciones y el
VPA de las primas

Se asumirá siempre:

- $i = 0.06$ Tabla de mortalidad de la SOA

La reserva a tiempo $t$ será estimada como el VP de la pérdida futura a
tiempo $t$.

$$t_V = E[L_t]$$

::: center
:::

La ilustración anterior sirve para recordar de forma práctica lo que es
un seguro y su naturaleza cíclica, en donde un asegurado paga una prima,
que ingresa a una aseguradora para posteriormente pagar un beneficio a
ese asegurado.\
Es además importante recordar los tipos de primas que existen:

- Prima única: Aquella en la que se efectúa un solo pago al principio.

- Prima nivelada: Aquella en la que se efectúan una serie de pagos a lo
  largo de un periodo.

**El principio de equivalencia:** Sostiene que el valor actuarial
esperado de las primas (aportaciones), calculados ambos en el mismo
instante del tiempo y bajo las mismas hipótesis financieras y
biométricas es igual al valor actuarial esperado de las primas, en otras
palabras:

$$\text{VAE(Beneficios)} = \text{VAE(Primas)}$$

Esto es de suma importancia, debido a que implica que el contrato de
seguros debe ser financieramente justo (equilibrado) entre ambas partes,
lo cuál se cumple si:

- La aseguradora no obtiene ganancia ni pérdida neta.

- El asegurado no subsidia ni es subsididado.

Este principio es meramente técnico al implicar neutralidad financiera,
puesto que las aseguradoras (como toda entidad lucrativa) tienen el
mantra de tener rentabilidad.

Para que el principio sea válido, se consideran los siguientes
elementos:

- Interés técnico $i$

- Mortalidad/Supervivencia (tablas biométricas)

- Probabilidades de ocurrencia del siniestro

- Estructura temporal de pagos

- Valor del dinero en el tiempo

$l$: Es como se denota la pérdida futura en la que va a incurrir la
compañía aseguradora.

1.  Prima neta "Net"

    $$L_0^n = \text{VP de Beneficios} - \text{VP de las primas} \hspace{.5cm} \text{(Sin gastos)}$$

2.  Prima bruta "Gross"

    $$L_0^n = \text{VP beneficios} + \text{VP de los gastos} - \text{VP de las primas} \hspace{.5cm} \text{(Con gastos)}$$

**Primas**

Usando el principio de equivalencia

$$E[L_0^n] = 0 \hspace{.5cm} \text{``El valor esperado de la pérdida futura será 0''}$$

**Ejemplo**

Un asegurado de (60) compra un seguro vitalicio de \$ 100,000 pagadero
al momento de su muerte; Se nos encarga estimar la prima bajo el
principio de equivalencia, tomando en cuenta que las primas se pagarán
hasta que cumpla 80 años, dado que:

$$\mu = 0\decimalpoint.05, \hspace{0.5cm} \delta = 0\decimalpoint.006$$

$$L_0^n = \underbrace{\text{VP Obligaciones}}_{\text{Seguro}} - \text{VP de las primas}$$

Lo cuál quedaría de la siguiente manera en notación actuarial:

$$100,000 \Ax*{60} - P \cdot \ddot{a}_{\endow{60}{20}}$$

Aplicando el principio de equivalencia, tenemos que la expresión
anterior equivale a:

$$0 = 100,000 \Ax*{60} - P \cdot \ddot{a}_{\endow{60}{20}}$$

Aplicando despejes algebráicos simples llegamos a la conclusión de que:

$$P = \frac{100,000 \Ax*{60}}{\ddot{a}_{\endow{60}{20}}}$$

Acto seguido calculamos los dos elementos que necesitamos para obtener
el valor de nuestra prima:

$$\Ax*{60} = \frac{\mu}{\mu + \delta} = \frac{0.05}{0.056} = 0 \decimalpoint. 8928$$

Para la parte de la anualidad contingente es necesario recordar que la
tasa de descuento $d = 1 - e^{-\delta}$, por lo que:

$$% Primera parte de la expresion
    d =  1 - e ^ {-0\decimalpoint.006} = \decimalpoint.00598203$$

$$\ddot{a}_{\endow{60}{20}} = \frac{1 - \Ax*{x}{n}}{d} = \frac{1 - [1 - e^{-20(0\decimalpoint.05)(0\decimalpoint.006)}]}{\decimalpoint.00598203} = 54\decimalpoint.54332302 \approx 54\decimalpoint.54 \%$$

$$= \frac{100,000[.8928]}{54.54} = \$ 1638.863965 \approx \boxed{\$ 1638.83}$$

**Gross Premium**

Gastos

- Gasto inicial: Comisiones del agente + "Underwrittings".

- Gastos administrativos

- Gastos al momento del beneficio

**Ejemplo**

Se tiene un seguro de (30) de vida entera con una suma asegurada de \$
500,000 pagadero al final del mes, donde las primas serán pagadas al
principio de cada año durante el tiempo de cobertura.

Algunos de los gastos son:

1.  50% de la primera prima para el agente

2.  \$ 2,500 por emisión

3.  5% de cada prima por admin.

4.  4% cuando se cobre la S.A

## Vidas Múltiples

Implica hacer todos los cálculos que hicimos en este semestre y en el
anterior, pero haciendolos para muchas personas.

Se usa para seguros un poco más complejos, como los seguros colectivos,
para grupos relacionados entre si, o seguros familiares donde la vida
depende de algún familiar.

Dicho esto ocurren dos casos:

- Vida conjunta ("Primero que muere")

- Último sobreviviente ("Último que muere")

### Vida conjunta

Teniendo a dos personas que serán denotadas como $(x)$ y $(y)$, el
estatus que se les otorga de "vida conjunta" estará vigente siempre y
cuando $(x)$ y $(y)$ estén con vida (La misma restricción aplica para un
caso de tres o más personas), donde dicho estatus termina o vence en el
momento en el que la primera persona muere sin importar quien sea.\
$T_{xy}$: Es el tiempo futuro del estatus vida conjunta osea en el
tiempo en el que la primer persona del grupo muere.

$$T_{xy} = \min(T_x, T_y) \leq T_x \hspace{1cm} \& \hspace{1cm} T_{xy} = \min(T_x, T_y) \leq T_y$$

$$\text{Para el caso de cuatro variables la notación sería...} \hspace{0.5cm} T_{xyzw} = \min{T_x, T_y, T_z, T_w}$$\
**Probabilidad de fracaso/éxito**\
La probabilidad de que el estatus sobreviva viene dada por:

$$P[(x) \text{ y } (y) \text{ estén con vida } t \text{ años } ] = P[T_{xy} > t] = \px[t]{xy}$$\
Mientras que la probabilidad de que el estatus falle (Se debe recordar
que es la probabilidad de que una persona de las tantas del grupo muera)
viene dada por:

$$P[(x) \text{ y } (y) \text{ No estén con vida en } t \text{ años } ] = Pr[T_{xy} \leq t] = \qx[t]{xy}$$\
Y dado que asumimos vidas independientes:

$$\px[t]{xy} = Pr[T_{xy} > T_x \hspace{.3cm} \& \hspace{.3cm} T_{xy} > T_y] = \px[t]{x} \cdot \px[t]{y}$$

$$\qx[t]{xy} = 1 - \px[t]{xy} = 1 - \px[t]{x} \cdot \px[t]{y} = 1 - (1 - \qx[t]{x})(1-\qx[t]{y})$$

::: calloutbase
orange

No debes confundirte en la notación, recuerda que al igual que en la
notación probabilística: $$\qx[t]{xy} \neq \qx[t]{x} \cdot \qx[t]{y}$$
:::

**Ejemplo:**\
Teniendo la siguiente tabla de mortalidad, donde $(x)$ es el marido de
edad 65 y $(y)$ la mujer de edad 60. se nos pide calcular la
probabilidad de que el estatus termine en los siguientes 3 años:\

::: center
   $x$   $\lx{x}$   $y$   $\lx{y}$
  ----- ---------- ----- ----------
   65     4.302     60     4.726
   66     4.189     61     4.110
   67     4.205     62     4.127
   68     4.219     63     4.143
   69     4.234     64     4.159
:::

**Resolución**\

::: center
:::

$$\qx[3]{65:60} = 1 - \px[3]{65:60} = 1 - \px[3]{65} \cdot \px[3]{60} = 1 - \left( \frac{\lx{68}}{\lx{65}}\right) \left(\frac{\lx{63}}{\lx{60}} \right)$$

$$= 1 - \left( \frac{41.351}{43.302}\right) \left(\frac{46.580}{47.260} \right) = 0.06041 = \boxed{6.041} \%$$

### Último sobreviviente

Estatus que falla cuando TODAS las personas del grupo mueren.\
$$T_{\joint{xy}} = \max(T_x, T_y)\hspace{1cm} \text{Tiempo futuro de vida del grupo}$$

$$\px[t]{\joint{xy}} = Pr[ \text{ al menos } (x) \text{ o } (y) \text{ esten con vida } t \text{ años } ] =Pr[T_{\joint{xy}} > t]$$

$$\qx[t]{\joint{xy}} = Pr[ \text{ al menos } (x) \text{ y } (y) \text{ mueran en } t \text{ años } ] =Pr[T_{\joint{xy}} \leq t]$$\
**Relación**

1.  Si $(x)$ muere primero
    $\rightarrow T_x = T_{xy} \therefore T_y = T_{\joint{xy}}$

2.  Si $(y)$ muere primero
    $\rightarrow T_y = T_{xy} \therefore T_x = T_{\joint{xy}}$

$${\color{blue}\Rightarrow \px[t]{x} + \px[t]{y} = \px[t]{xy} + \px[t]{\joint{xy}}}$$

$${\color{red}\Rightarrow \px[t]{\joint{xy}} = \px[t]{x} + \px[t]{y} - \px[t]{xy}}$$

::: center
(La fórmula anterior es una aplicación del teorema de inclusión
exclusión)
:::

**Ejemplo:**

$$\px[2]{5} = 0{.}9 \text{ y }    \px[3]{77} = 0{.}8$$

Para dos variables independientes calcular:

1.  $\px[2]{\joint{75:77}} = \px[2]{\joint{75}} + \px[2]{\joint{75}} - \px[2]{75:75} = 2(\px[2]{75}) - (\px[2]{75})^2 = 2(0.9) - (0.9)^2 = 0.99$

2.  $\px[3]{\joint{77:77}} = \px[3]{77} + \px[3]{77} - \px[3]{77:77} = 2(0.8) - (0.8)^2 = 0.96$

3.  $\px[5]{\joint{75:75}} = \px[5]{75} + \px[5]{75} - \px[5]{75:75} = 2(\px[2]{75} \cdot \px[3]{77}) - (\px[2]{75} \cdot \px[3]{77})^2 = 2(0.9 \cdot 0.8) - (0.9 \cdot 0.8)^2 = 0.9216$

::: calloutbase
orange

**Nota:** es preciso que recuerdes que efectuar la siguiente operación
no es válido:

$$\px[5]{\joint{75:75}} = \px[2]{\joint{75:75}} \cdot \px[3]{\joint{77:77}} = 
        0.99 \cdot 0.96 = 
        .9504 
        \neq 0.9216$$
:::

**Ejercicio:**

::: center
   $x$   $\qx{x}^m$   $\qx{x}^t$
  ----- ------------ ------------
   80       0.1          0.07
   81       0.12         0.09
   82       0.14         0.11
   83       0.16         0.13
   84       0.18         0.15
:::

Juan y laura son pareja, Juan tiene 82, Laura 80 y tienen vidas
independientes, se nos pide calcular la probabilidad de que la segunda
muerte ocurra durante el 3er año.

::: center
:::

$$\qx[2|1]{\joint{82:80}} = \px[2]{\joint{82:80}} - \px[3]{\joint{82:80}} = \underbrace{ \px[2]{82} + \px[2]{80} - \px[2]{82} \cdot \px[2]{80}}_{\px[3]{\joint{82:80}}} - \underbrace{[\px[3]{82} + \px[3]{80} - \px[3]{82} \cdot \px[3]{80} ]}_{\px[2]{\joint{82:80}}}$$

$$\px[2]{82} = (1 - \qx{82}) (1- \qx{83}) = \px{82} \cdot \px{83}$$

$$\px[2]{82} = (1 - 0{.}14) (1 - 0{.}16) = 0{.}7224$$

$$\px[2]{80} = (1 - \qx{80}) (1 - \qx{84})$$

$$(1- 0{.}07)(1 - 0{.}09) = 0{.}8463$$

$$\px[3]{82} = (1 - \qx{82})(1 - \qx{85})(1 - \qx{84}) = (1 - 0{.}14) ( 1 - 0{.}16) ( 1 - 0{.}18) = 0{.}592368$$

$$\px[3]{80} = (1 - \qx{80}) (1 - \qx{81}) (1 - \qx{82}) = (1 - 0{.}07) (1 - 0{.}09) ( 1 - 0{.}11) = 0{.}753207$$

Por lo que:

$$\qx[2|1]{\joint{82:80}} = 0{.}7224 + 0{.}8463 - (0{.}7224 \cdot 0{.}8463) - [0{.}592368 + 0{.}753207 - (0{.}592368 \cdot 0{.}753207)] = 0{.}0579336042$$

### Beneficios de vidas conjuntas

Seguro de vida entera, continuo, vida conjunta

$$\Ax*{xy} = \int_{0}^{\infty} e^{-\delta t} \cdot \px[t]{xy}  \cdot \mu_{xy} dt = \int_{0}^{\infty} e^{-\delta t} \cdot \px[t]{xy} (\mu_x + \mu_y) dt$$

Anualidad conjunta continua

$$\bar{a}_{xy} = \int_0 ^{\infty} e ^{- \delta t} \px[t]{xy} dt$$

**Recordatorio:**

$$a_{xy} = \frac{1 - \Ax*{xy}}{\delta}$$

### Beneficios de último sobreviviente

$$\Ax*{\joint{xy}} = \Ax*{x} + \Ax*{y} - \Ax*{xy}$$

$$\bar{a}_{\joint{xy}} = \bar{a}_x + \bar{a}_y - \bar{a}_{xy}$$

$$\bar{a}_{\joint{xy}} = \frac{1 - \Ax*{\joint{xy}}}{\delta}$$

### Beneficios de temporales

$$\Ax*{\tilde{x}:\endow{y}{n}} = \int_0 ^n e^{- \delta t} \px[t]{xy} (\mu_x + \mu_y) dt$$

$$\bar{a}_{\tilde{x}:\endow{y}{n}} = \int_0 ^n e^{- \delta t} \px[t]{xy} dt$$

Seguro ultimo sobreviviente

$$\Ax*{\tilde{\joint{x:y}}:\actuarialangle{n}} = \bar{a}_{\term{x}{n}} + \bar{a}_{\term{y}{n}} - \bar{a}_{x:\tilde{y}:\actuarialangle{n}}$$

Anualidad ultimo sobreviviente

$$\bar{A}_{\tilde{\joint{x:y}}:\actuarialangle{n}}$$

Relación:

$$\bar{a}_{x:y:\actuarialangle{n}} = \frac{1 - \Ax*{xy:\actuarialangle{n}}}{\delta}$$

Relación:

**Ejemplo:**

Sean $(x)$ y $(y)$ dos vidas independientes con fuerzas de mortalidad
constantes

$$\mu_x = 0{.}002 \quad \mu_y = 0{.}004$$

y dada una fuerza de interés

$$\delta = 0{.}05$$

Se desea estimar el **Valor Presente Actuarial (VPA)** de un beneficio
de \$ 500,000 bajo distintos esquemas:

1.  Vida entera al momento de la primera muerte.

2.  Vida entera al momento de la segunda muerte.

3.  Temporal de 25 años pagadero al momento de la primer muerte.

4.  Temporal de 25 a;os pagadero al momento de la segunda muerte.

**Fórmulas bajo fuerza de mortalidad constante**

Para la **vida conjunta** (primer fallecimiento):

$$\mu_{xy} = \mu_x + \mu_y$$

$$\overline{A}_{xy}
    =
    \frac{\mu_x + \mu_y}{\mu_x + \mu_y + \delta}$$

$$\overline{A}_{xy:\angl{n}}
    =
    \frac{\mu_x + \mu_y}{\mu_x + \mu_y + \delta}
    \left(
    1 - e^{-n(\mu_x+\mu_y+\delta)}
    \right)$$

Para una vida individual:

$$\overline{A}_x
    =
    \frac{\mu_x}{\mu_x+\delta}
    \qquad
    \overline{A}_y
    =
    \frac{\mu_y}{\mu_y+\delta}$$

Para el **último sobreviviente** (segunda muerte):

$$\overline{A}_{\overline{xy}}
    =
    \overline{A}_x
    +
    \overline{A}_y
    -
    \overline{A}_{xy}$$

**Resolución del ejercicio**

**a) Vida entera pagadera al momento de la primera muerte**

$$\overline{A}_{xy}
    =
    \frac{0.002+0.004}{0.002+0.004+0.05}
    =
    \frac{0.006}{0.056}
    =
    0.1071429$$

$$VPA
    =
    500{,}000
    \times
    0.1071429
    =
    53{,}571.42$$

**b) Vida entera pagadera al momento de la segunda muerte**

$$\overline{A}_{\overline{xy}}
    =
    \overline{A}_x
    +
    \overline{A}_y
    -
    \overline{A}_{xy}$$

$$=
    \frac{0.002}{0.002+0.05}
    +
    \frac{0.004}{0.004+0.05}
    -
    \frac{0.006}{0.056}$$

$$=
    0.0384615
    +
    0.0740741
    -
    0.1071429
    =
    0.0053927$$

$$VPA
    =
    500{,}000
    \times
    0.0053927
    =
    2{,}696.37$$

**c) Seguro temporal 25 años a la primera muerte**

$$\overline{A}_{xy:\angl{25}}
    =
    \frac{0.006}{0.056}
    \left(
    1 - e^{-25(0.056)}
    \right)$$

$$=
    0.1071429
    \left(
    1 - e^{-1.4}
    \right)$$

$$=
    0.1071429
    (0.7534)
    =
    0.080721$$

$$VPA
    =
    500{,}000
    \times
    0.080721
    =
    40{,}360.55$$

**d) Seguro temporal 25 años a la segunda muerte**

$$\overline{A}_{\overline{xy}:\angl{25}}
    =
    \overline{A}_{x:\angl{25}}
    +
    \overline{A}_{y:\angl{25}}
    -
    \overline{A}_{xy:\angl{25}}$$

donde

$$\overline{A}_{x:\angl{25}}
    =
    \frac{0.002}{0.052}
    \left(
    1 - e^{-25(0.052)}
    \right)$$

$$\overline{A}_{y:\angl{25}}
    =
    \frac{0.004}{0.054}
    \left(
    1 - e^{-25(0.054)}
    \right)$$

y

$$\overline{A}_{xy:\angl{25}}
    =
    \frac{0.006}{0.056}
    \left(
    1 - e^{-25(0.056)}
    \right)$$

**Tarea**

Para un beneficio de \$25,000:

1.  Anualidad vitalicia mientras ambas personas estén con vida.

2.  Anualidad vitalicia mientras al menos una persona esté con vida.

3.  Anualidad temporal 25 años bajo vida conjunta.

4.  Anualidad temporal 25 años bajo último sobreviviente.

Para el caso discreto

$$\Ax{xy} = \sum_{k=0}^\infty v^k \Px[k]{xy}(1 - \Px{x+k:y+k})$$

$$\Ax{\joint{xy}} = \sum v^{k+1} \Px[k]{\joint{xy}} (1 - \Px{\joint{x+k:y+k}})$$

La relación mencionada anteriormente se respeta

$$\Ax*{\joint{xy}} = \Ax{x} + \Ax{y} - \Ax{xy}$$

Mientras que para los temporales se vería algo así:

$$\Ax{\term{xy}{n}} = \sum_{k=0}^{n-1} v^{k+1} \cdot \qx[k|]{xy}$$

$$\Ax{\term{\joint{xy}}{n}} = \sum_{k=0}^{n-1} v^{k+1} \cdot \qx[k|]{\joint{xy}}$$

Para las anualidades sería:

$$\ddot{a}_{xy} = \sum_{k=0}^\infty v^k \Px[k]{xy}$$

$$\ddot{a}_{xy} = \sum_{k=0}^\infty v^k \Px[k]{xy}$$

$$\ddot{a}_{\endow{x:y}{n}} = \sum_{k=0}^{n-1} v^k \Px[k]{xy}$$

### Valor de rescate

El monto que la aseguradora le otorga al asegurado en caso de
cancelación asumir que la prima es nivelada o única.

El valor de rescate es la diferencia entre el valor esperado de
obligaciones futuras de la aseguradora ej. El valor esperado de
obligaciones futuras del asegurado por el pago de primas.

$$\Vx[x]{\endow{x}{n}} = \Ax{\endow{x+t}{n-1}} - P \cdot N \hspace{.25cm} _{x:n} \ddot{a}_{\endow{x+t}{n-t}}$$

Forma parte de los valores garantizados cuando el asegurado decide no
continuar con el seguro, entonces se devuelve una parte de la reserva,
siempre y cuando tenga 2 años.

En la vida real (Aplicación práctica), las aseguradoras manejan sus
propias tablas de cancelación e idealmente cada producto debería tener
su propia tabla de cancelación similar a una tabla de mortalidad, con
las subsecuentes probabilidades de cancelación.

- Seguro saldado: Si el asegurado decide no seguir pagando su póliza (no
  más primas) pero desea seguir cubierto. El valor de rescate de ese
  momento puede servir para pagar el plazo que falte de transcurrir de
  la vigencia del contrato. Valor de rescate paga una cobertura a prima
  única por el mismo plazo pero menor suma asegurada. Respeta
  temporalidad. No más pago de primas. Menor Suma Asegurada (Lo que
  alcance con el valor de rescate).

- Seguro prorrogado: El valor de rescate sirve para comprar un seguro
  Misma suma asegurada. Mejor temporalidad. Sin pago de primas
  adicionales.

## Anualidades reversionarias

Anualidad para una persona y condicionada a la muerte de edad $x$.

$$\ddot{a}_{x|y} = \ddot{a}_{y} - \ddot{a}_{xy}$$

$$\ddot{a}_{y|x}  = \ddot{a}_{x} - \ddot{a}_{xy}$$

Lo anterior significa que la anualidad se paga mientras $x$ viva.

**Ejercicio**

Una pareja compra un seguro. El esposo tiene 55 años y su esposa 50. Los
dos tienen acceso a una pensión. Si el muere antes, ella dejará de
recibir dicha pensión.

El plan consiste en \$20,000 al principio de cada año. Estimar el VPA
del beneficio.

$$M_x = 0.002 M_y = 0.003 \delta = 0.05$$

## Decrementos Múltiples

Es un tipo de modelo en el que se tienen distintas causas por las que un
individuo sale de un grupo.

::: callout-azul
**Ejemplo:**

Cuando alguna aseguradora necesita distinguir entre los mótivos por los
que se está dando de baja a una u a otra persona, ya sea para aplicar
exclusiones o beneficios adicionales; ej. Muerte (tanto natural como
accidental), invalidez, vejez, etc.
:::

Las causas son denotadas bajo este modelo con variables aleatorias $j$,
por lo que ahora en este modelo tendremos ya no solo la variable
aleatoría $T(x)$, sino que tendremos dos $T(x)$ y $J$. Por ende bajo
este modelo la forma de expresar el tiempo futuro de vida de un modelo
de decrementos múltiples en donde $(x)$ está sujeto a todas las posibles
causas de salida $\tau$ se expresa como:

$$T^{(\tau)}_{(x)}$$

Para esto $j = 1, 2, \dots, m$ son las causas de salida (Total de $m$).

De acuerdo a lo anterior y a la teoría de la probabilidad, podemos
afirmar que tenemos entonces una distribución bivariada con por lo menos
una de las variables aleatorias discretas $J$

$P(T^{(\tau)}_{(x)} \leq t)$: Probabilidad de que $(x)$ salga o termine
antes del tiempo $t$ por cualquier causa.

$P(J=j) = f_{J}(j)$: Probabilidad de que $(x)$ salga o termine por causa
$j$ en cualquier momento.

Al integrar,

$$P(J=j) = \int_{0}^\infty f_{T^{(\tau)}_{(x)}, J} (t, j)dt$$

$$= \sum^{m}_{j=1} f_{T^{(\tau)}_{(x)}, J} (t, j)$$

Sus respectivas funciones de densidad son:

Conjunta:
$f_{T^{(\tau)}_{(x)}, J} = \px[t]{x}^{(\tau)} \mu_{x+t}^{(\tau)}$

Marginal de t:
$f_{T^{(\tau)}_{(x)}}(t) = \px[t]{x}^{(\tau)} \mu_{x+t}^{(\tau)}$

Marginal de j: $P(J=j) = \qx[\infty]{x}^{(j)}$

La condicional de $t$ dado $j$

$$f_{T(x)\mid J}(t \mid j)
    =
    \frac{f_{T(x),J}(t,j)}{P(J=j)}
    =
    \frac{{}_t p_x^{(j)} \, \mu_{x+t}^{(j)}}{q_x^{(j)}}$$

La condicional de $j$ dado $t$

$$f_{J \mid T(x)}(j \mid t)
    =
    \frac{f_{T(x),J}(t,j)}{f_{T(x)}(t)}
    =
    \frac{{}_t p_x^{(j)} \, \mu_{x+t}^{(j)}}{{}_t p_x \, \mu_{x+t}}
    =
    \frac{\mu_{x+t}^{(j)}}{\mu_{x+t}}$$

**Ejemplo**

$$f_{T_x^{(r)},J}(t,j) = j e^{-6t}
        =
    \begin{cases}
        e^{-6t}, & j = 1 \\
        2e^{-6t}, & j = 2 \\
        3e^{-6t}, & j = 3
    \end{cases}$$

$${}_{4|2} q_x^{(2)} = {}_4 p_x^{(r)} \cdot {}_2 q_{x+4}^{(2)}$$

$${}_{4|2} q_x^{(2)} = \int_{4}^{6} f_{T_x^{(r)},J}(t,2)\, dt$$

$$f_{T_x^{(r)},J}(t,j) = {}_t p_x^{(r)} \, \mu_{x+t}^{(j)} = j e^{-6t}$$

Empleando lo anterior, podemos proceder:

$${}_{4|2} q_x^{(2)} 
    = {}_4 p_x^{(\tau)} \cdot {}_2 q_{x+4}^{(2)}
    = \int_{4}^{6} 2e^{-6t}\, dt$$

$$= 2 \int_{4}^{6} e^{-6t}\, dt
    = 2 \left[ \frac{e^{-6t}}{-6} \right]_{4}^{6}$$

$$= -\frac{1}{3} \left( e^{-36} - e^{-24} \right)
    = \frac{e^{-24} - e^{-36}}{3}$$

$$\approx 0.00002048$$

<figure data-latex-placement="h">
<p><span class="math display">$$\begin{array}{c|cccccc}
        \text{Año } k &amp; 0 &amp; 1 &amp; 2 &amp; 3 &amp; 4 &amp; 5 \\
        \hline
        q^{(1)}_{x+k} &amp; 0.003 &amp; 0.004 &amp; 0.005 &amp; 0.006
&amp; 0.007 &amp; 0.008 \\
        q^{(2)}_{x+k} &amp; 0.140 &amp; 0.120 &amp; 0.100 &amp; 0.080
&amp; 0.060 &amp; 0.040 \\
        q^{(r)}_{x+k} &amp; 0.143 &amp; 0.124 &amp; 0.105 &amp; 0.086
&amp; 0.067 &amp; 0.048 \\
    \end{array}$$</span></p>
<figcaption>Tabla a emplear para la siguiente clase</figcaption>
</figure>
